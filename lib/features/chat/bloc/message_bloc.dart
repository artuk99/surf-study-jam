import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_practice_chat_flutter/features/chat/repository/chat_repository.dart';

part 'message_bloc.freezed.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const MessageEvent._();

  const factory MessageEvent.sendMessage({required final String? message}) =
      _SendMessageEvent;
}

@freezed
class MessageState with _$MessageState {
  const MessageState._();

  const factory MessageState.idle({
    required final String message,
  }) = _IdleState;

  const factory MessageState.success({
    required final String message,
  }) = _SuccessState;

  const factory MessageState.error({
    required final String message,
    @Default('Failed to send message') final String errorMessage,
  }) = _ErrorState;

  const factory MessageState.inProgress({
    required final String message,
  }) = _InProgressState;
}

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc({
    required final IChatRepository chatRepository,
  })  : _chatRepository = chatRepository,
        super(const MessageState.idle(message: '')) {
    on<_SendMessageEvent>(_onSendMessage);
  }

  final IChatRepository _chatRepository;

  Future<void> _onSendMessage(
    _SendMessageEvent event,
    Emitter<MessageState> emit,
  ) async {
    if(event.message == null) return;
    emit(MessageState.inProgress(message: state.message));
    try {
      await _chatRepository.sendMessage(event.message!);
      emit(const MessageState.success(message: ''));
    } catch (e) {
      emit(MessageState.error(message: state.message));
    }
  }
}
