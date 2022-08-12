import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_practice_chat_flutter/features/topics/models/chat_topic_dto.dart';
import 'package:surf_practice_chat_flutter/features/topics/repository/chart_topics_repository.dart';

part 'topic_bloc.freezed.dart';

@freezed
class TopicEvent with _$TopicEvent {
  const TopicEvent._();

  const factory TopicEvent.getTopics() = _GetTopicsEvent;

  const factory TopicEvent.createTopic({
    required final String name,
    required final String description,
  }) = _CreateTopicEvent;
}

@freezed
class TopicState with _$TopicState {
  const TopicState._();

  const factory TopicState.fetching({
    required final List<ChatTopicDto> topics,
  }) = _FetchingState;

  const factory TopicState.idle({
    required final List<ChatTopicDto> topics,
  }) = _IdleState;

  const factory TopicState.error({
    required final List<ChatTopicDto> topics,
    @Default('Failed to update chat') final String message,
  }) = _ErrorState;
}

class TopicBloc extends Bloc<TopicEvent, TopicState> {
  TopicBloc({required final IChatTopicsRepository topicRepository})
      : _topicRepository = topicRepository,
        super(const TopicState.fetching(topics: [])) {
    on<_GetTopicsEvent>(_onGetMessages);
  }

  final IChatTopicsRepository _topicRepository;

  Future<void> _onGetMessages(
    _GetTopicsEvent event,
    Emitter<TopicState> emit,
  ) async {
    emit(TopicState.fetching(topics: state.topics));
    try {
      final topics = await _topicRepository.getTopics(
          topicsStartDate: DateTime.now().subtract(const Duration(days: 7)));
      emit(TopicState.idle(topics: topics.toList()));
    } catch (e) {
      emit(TopicState.error(topics: state.topics));
    }
  }
}
