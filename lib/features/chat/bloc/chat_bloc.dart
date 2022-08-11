import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_message_dto.dart';
import 'package:surf_practice_chat_flutter/features/chat/repository/chat_repository.dart';

part 'chat_bloc.freezed.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const ChatEvent._();

  const factory ChatEvent.getMessages() = _GetMessagesEvent;
}

@freezed
class ChatState with _$ChatState {
  const ChatState._();

  const factory ChatState.fetching({
    required final List<ChatMessageDto> messages,
  }) = _FetchingState;

  const factory ChatState.idle({
    required final List<ChatMessageDto> messages,
  }) = _IdleState;

  const factory ChatState.error({
    required final List<ChatMessageDto> messages,
    @Default('Failed to update chat') final String message,
  }) = _ErrorState;
}

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({required final IChatRepository chatRepository})
      : _chatRepository = chatRepository,
        super(const ChatState.fetching(messages: [])) {
    on<_GetMessagesEvent>(_onGetMessages);
  }

  final IChatRepository _chatRepository;

  Future<void> _onGetMessages(
    _GetMessagesEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.fetching(messages: state.messages));
    try {
      final messages = await _chatRepository.getMessages();
      emit(ChatState.idle(messages: messages.toList()));
    } catch (e) {
      emit(ChatState.error(messages: state.messages));
    }
  }
}
