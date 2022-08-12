import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_message_dto.dart';
import 'package:surf_practice_chat_flutter/features/chat/repository/chat_repository.dart';

part 'chat_bloc.freezed.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const ChatEvent._();

  const factory ChatEvent.initChat({
    required final int hcatId,
  }) = _InitChatEvent;

  const factory ChatEvent.getMessages() = _GetMessagesEvent;
}

@freezed
class ChatState with _$ChatState {
  const ChatState._();

  const factory ChatState.fetching({
    required final int? chtId,
    required final List<ChatMessageDto> messages,
  }) = _FetchingState;

  const factory ChatState.idle({
    required final int? chtId,
    required final List<ChatMessageDto> messages,
  }) = _IdleState;

  const factory ChatState.error({
    required final int? chtId,
    required final List<ChatMessageDto> messages,
    @Default('Failed to update chat') final String message,
  }) = _ErrorState;
}

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({required final IChatRepository chatRepository})
      : _chatRepository = chatRepository,
        super(const ChatState.idle(messages: [], chtId: null)) {
    on<_InitChatEvent>(_onInitChat);
    on<_GetMessagesEvent>(_onGetMessages);
  }

  final IChatRepository _chatRepository;

  void _onInitChat(
    _InitChatEvent event,
    Emitter<ChatState> emit,
  ) {
    emit(ChatState.idle(
      messages: state.messages,
      chtId: event.hcatId,
    ));
  }

  Future<void> _onGetMessages(
    _GetMessagesEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.fetching(messages: state.messages, chtId: state.chtId));
    try {
      final messages = await _chatRepository.getMessages(chatId: state.chtId);
      emit(ChatState.idle(messages: messages.toList(), chtId: state.chtId));
    } catch (e) {
      emit(ChatState.error(messages: [], chtId: state.chtId, message: e.toString()));
    }
  }
}
