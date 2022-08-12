// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'topic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopicEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopics,
    required TResult Function(String name, String description) createTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getTopics,
    TResult Function(String name, String description)? createTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopics,
    TResult Function(String name, String description)? createTopic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_CreateTopicEvent value) createTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_CreateTopicEvent value)? createTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_CreateTopicEvent value)? createTopic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicEventCopyWith<$Res> {
  factory $TopicEventCopyWith(
          TopicEvent value, $Res Function(TopicEvent) then) =
      _$TopicEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopicEventCopyWithImpl<$Res> implements $TopicEventCopyWith<$Res> {
  _$TopicEventCopyWithImpl(this._value, this._then);

  final TopicEvent _value;
  // ignore: unused_field
  final $Res Function(TopicEvent) _then;
}

/// @nodoc
abstract class _$$_GetTopicsEventCopyWith<$Res> {
  factory _$$_GetTopicsEventCopyWith(
          _$_GetTopicsEvent value, $Res Function(_$_GetTopicsEvent) then) =
      __$$_GetTopicsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetTopicsEventCopyWithImpl<$Res>
    extends _$TopicEventCopyWithImpl<$Res>
    implements _$$_GetTopicsEventCopyWith<$Res> {
  __$$_GetTopicsEventCopyWithImpl(
      _$_GetTopicsEvent _value, $Res Function(_$_GetTopicsEvent) _then)
      : super(_value, (v) => _then(v as _$_GetTopicsEvent));

  @override
  _$_GetTopicsEvent get _value => super._value as _$_GetTopicsEvent;
}

/// @nodoc

class _$_GetTopicsEvent extends _GetTopicsEvent {
  const _$_GetTopicsEvent() : super._();

  @override
  String toString() {
    return 'TopicEvent.getTopics()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetTopicsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopics,
    required TResult Function(String name, String description) createTopic,
  }) {
    return getTopics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getTopics,
    TResult Function(String name, String description)? createTopic,
  }) {
    return getTopics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopics,
    TResult Function(String name, String description)? createTopic,
    required TResult orElse(),
  }) {
    if (getTopics != null) {
      return getTopics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_CreateTopicEvent value) createTopic,
  }) {
    return getTopics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_CreateTopicEvent value)? createTopic,
  }) {
    return getTopics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_CreateTopicEvent value)? createTopic,
    required TResult orElse(),
  }) {
    if (getTopics != null) {
      return getTopics(this);
    }
    return orElse();
  }
}

abstract class _GetTopicsEvent extends TopicEvent {
  const factory _GetTopicsEvent() = _$_GetTopicsEvent;
  const _GetTopicsEvent._() : super._();
}

/// @nodoc
abstract class _$$_CreateTopicEventCopyWith<$Res> {
  factory _$$_CreateTopicEventCopyWith(
          _$_CreateTopicEvent value, $Res Function(_$_CreateTopicEvent) then) =
      __$$_CreateTopicEventCopyWithImpl<$Res>;
  $Res call({String name, String description});
}

/// @nodoc
class __$$_CreateTopicEventCopyWithImpl<$Res>
    extends _$TopicEventCopyWithImpl<$Res>
    implements _$$_CreateTopicEventCopyWith<$Res> {
  __$$_CreateTopicEventCopyWithImpl(
      _$_CreateTopicEvent _value, $Res Function(_$_CreateTopicEvent) _then)
      : super(_value, (v) => _then(v as _$_CreateTopicEvent));

  @override
  _$_CreateTopicEvent get _value => super._value as _$_CreateTopicEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_CreateTopicEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateTopicEvent extends _CreateTopicEvent {
  const _$_CreateTopicEvent({required this.name, required this.description})
      : super._();

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'TopicEvent.createTopic(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTopicEvent &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_CreateTopicEventCopyWith<_$_CreateTopicEvent> get copyWith =>
      __$$_CreateTopicEventCopyWithImpl<_$_CreateTopicEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopics,
    required TResult Function(String name, String description) createTopic,
  }) {
    return createTopic(name, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getTopics,
    TResult Function(String name, String description)? createTopic,
  }) {
    return createTopic?.call(name, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopics,
    TResult Function(String name, String description)? createTopic,
    required TResult orElse(),
  }) {
    if (createTopic != null) {
      return createTopic(name, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_CreateTopicEvent value) createTopic,
  }) {
    return createTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_CreateTopicEvent value)? createTopic,
  }) {
    return createTopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_CreateTopicEvent value)? createTopic,
    required TResult orElse(),
  }) {
    if (createTopic != null) {
      return createTopic(this);
    }
    return orElse();
  }
}

abstract class _CreateTopicEvent extends TopicEvent {
  const factory _CreateTopicEvent(
      {required final String name,
      required final String description}) = _$_CreateTopicEvent;
  const _CreateTopicEvent._() : super._();

  String get name;
  String get description;
  @JsonKey(ignore: true)
  _$$_CreateTopicEventCopyWith<_$_CreateTopicEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TopicState {
  List<ChatTopicDto> get topics => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatTopicDto> topics) fetching,
    required TResult Function(List<ChatTopicDto> topics) idle,
    required TResult Function(List<ChatTopicDto> topics, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatTopicDto> topics)? fetching,
    TResult Function(List<ChatTopicDto> topics)? idle,
    TResult Function(List<ChatTopicDto> topics, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatTopicDto> topics)? fetching,
    TResult Function(List<ChatTopicDto> topics)? idle,
    TResult Function(List<ChatTopicDto> topics, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchingState value) fetching,
    required TResult Function(_IdleState value) idle,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingState value)? fetching,
    TResult Function(_IdleState value)? idle,
    TResult Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingState value)? fetching,
    TResult Function(_IdleState value)? idle,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopicStateCopyWith<TopicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicStateCopyWith<$Res> {
  factory $TopicStateCopyWith(
          TopicState value, $Res Function(TopicState) then) =
      _$TopicStateCopyWithImpl<$Res>;
  $Res call({List<ChatTopicDto> topics});
}

/// @nodoc
class _$TopicStateCopyWithImpl<$Res> implements $TopicStateCopyWith<$Res> {
  _$TopicStateCopyWithImpl(this._value, this._then);

  final TopicState _value;
  // ignore: unused_field
  final $Res Function(TopicState) _then;

  @override
  $Res call({
    Object? topics = freezed,
  }) {
    return _then(_value.copyWith(
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<ChatTopicDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_FetchingStateCopyWith<$Res>
    implements $TopicStateCopyWith<$Res> {
  factory _$$_FetchingStateCopyWith(
          _$_FetchingState value, $Res Function(_$_FetchingState) then) =
      __$$_FetchingStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ChatTopicDto> topics});
}

/// @nodoc
class __$$_FetchingStateCopyWithImpl<$Res>
    extends _$TopicStateCopyWithImpl<$Res>
    implements _$$_FetchingStateCopyWith<$Res> {
  __$$_FetchingStateCopyWithImpl(
      _$_FetchingState _value, $Res Function(_$_FetchingState) _then)
      : super(_value, (v) => _then(v as _$_FetchingState));

  @override
  _$_FetchingState get _value => super._value as _$_FetchingState;

  @override
  $Res call({
    Object? topics = freezed,
  }) {
    return _then(_$_FetchingState(
      topics: topics == freezed
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<ChatTopicDto>,
    ));
  }
}

/// @nodoc

class _$_FetchingState extends _FetchingState {
  const _$_FetchingState({required final List<ChatTopicDto> topics})
      : _topics = topics,
        super._();

  final List<ChatTopicDto> _topics;
  @override
  List<ChatTopicDto> get topics {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'TopicState.fetching(topics: $topics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchingState &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  _$$_FetchingStateCopyWith<_$_FetchingState> get copyWith =>
      __$$_FetchingStateCopyWithImpl<_$_FetchingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatTopicDto> topics) fetching,
    required TResult Function(List<ChatTopicDto> topics) idle,
    required TResult Function(List<ChatTopicDto> topics, String message) error,
  }) {
    return fetching(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatTopicDto> topics)? fetching,
    TResult Function(List<ChatTopicDto> topics)? idle,
    TResult Function(List<ChatTopicDto> topics, String message)? error,
  }) {
    return fetching?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatTopicDto> topics)? fetching,
    TResult Function(List<ChatTopicDto> topics)? idle,
    TResult Function(List<ChatTopicDto> topics, String message)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(topics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchingState value) fetching,
    required TResult Function(_IdleState value) idle,
    required TResult Function(_ErrorState value) error,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingState value)? fetching,
    TResult Function(_IdleState value)? idle,
    TResult Function(_ErrorState value)? error,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingState value)? fetching,
    TResult Function(_IdleState value)? idle,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _FetchingState extends TopicState {
  const factory _FetchingState({required final List<ChatTopicDto> topics}) =
      _$_FetchingState;
  const _FetchingState._() : super._();

  @override
  List<ChatTopicDto> get topics;
  @override
  @JsonKey(ignore: true)
  _$$_FetchingStateCopyWith<_$_FetchingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IdleStateCopyWith<$Res>
    implements $TopicStateCopyWith<$Res> {
  factory _$$_IdleStateCopyWith(
          _$_IdleState value, $Res Function(_$_IdleState) then) =
      __$$_IdleStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ChatTopicDto> topics});
}

/// @nodoc
class __$$_IdleStateCopyWithImpl<$Res> extends _$TopicStateCopyWithImpl<$Res>
    implements _$$_IdleStateCopyWith<$Res> {
  __$$_IdleStateCopyWithImpl(
      _$_IdleState _value, $Res Function(_$_IdleState) _then)
      : super(_value, (v) => _then(v as _$_IdleState));

  @override
  _$_IdleState get _value => super._value as _$_IdleState;

  @override
  $Res call({
    Object? topics = freezed,
  }) {
    return _then(_$_IdleState(
      topics: topics == freezed
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<ChatTopicDto>,
    ));
  }
}

/// @nodoc

class _$_IdleState extends _IdleState {
  const _$_IdleState({required final List<ChatTopicDto> topics})
      : _topics = topics,
        super._();

  final List<ChatTopicDto> _topics;
  @override
  List<ChatTopicDto> get topics {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'TopicState.idle(topics: $topics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdleState &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  _$$_IdleStateCopyWith<_$_IdleState> get copyWith =>
      __$$_IdleStateCopyWithImpl<_$_IdleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatTopicDto> topics) fetching,
    required TResult Function(List<ChatTopicDto> topics) idle,
    required TResult Function(List<ChatTopicDto> topics, String message) error,
  }) {
    return idle(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatTopicDto> topics)? fetching,
    TResult Function(List<ChatTopicDto> topics)? idle,
    TResult Function(List<ChatTopicDto> topics, String message)? error,
  }) {
    return idle?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatTopicDto> topics)? fetching,
    TResult Function(List<ChatTopicDto> topics)? idle,
    TResult Function(List<ChatTopicDto> topics, String message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(topics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchingState value) fetching,
    required TResult Function(_IdleState value) idle,
    required TResult Function(_ErrorState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingState value)? fetching,
    TResult Function(_IdleState value)? idle,
    TResult Function(_ErrorState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingState value)? fetching,
    TResult Function(_IdleState value)? idle,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleState extends TopicState {
  const factory _IdleState({required final List<ChatTopicDto> topics}) =
      _$_IdleState;
  const _IdleState._() : super._();

  @override
  List<ChatTopicDto> get topics;
  @override
  @JsonKey(ignore: true)
  _$$_IdleStateCopyWith<_$_IdleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res>
    implements $TopicStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ChatTopicDto> topics, String message});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res> extends _$TopicStateCopyWithImpl<$Res>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, (v) => _then(v as _$_ErrorState));

  @override
  _$_ErrorState get _value => super._value as _$_ErrorState;

  @override
  $Res call({
    Object? topics = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorState(
      topics: topics == freezed
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<ChatTopicDto>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState extends _ErrorState {
  const _$_ErrorState(
      {required final List<ChatTopicDto> topics,
      this.message = 'Failed to update chat'})
      : _topics = topics,
        super._();

  final List<ChatTopicDto> _topics;
  @override
  List<ChatTopicDto> get topics {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'TopicState.error(topics: $topics, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topics),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatTopicDto> topics) fetching,
    required TResult Function(List<ChatTopicDto> topics) idle,
    required TResult Function(List<ChatTopicDto> topics, String message) error,
  }) {
    return error(topics, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatTopicDto> topics)? fetching,
    TResult Function(List<ChatTopicDto> topics)? idle,
    TResult Function(List<ChatTopicDto> topics, String message)? error,
  }) {
    return error?.call(topics, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatTopicDto> topics)? fetching,
    TResult Function(List<ChatTopicDto> topics)? idle,
    TResult Function(List<ChatTopicDto> topics, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(topics, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchingState value) fetching,
    required TResult Function(_IdleState value) idle,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingState value)? fetching,
    TResult Function(_IdleState value)? idle,
    TResult Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingState value)? fetching,
    TResult Function(_IdleState value)? idle,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends TopicState {
  const factory _ErrorState(
      {required final List<ChatTopicDto> topics,
      final String message}) = _$_ErrorState;
  const _ErrorState._() : super._();

  @override
  List<ChatTopicDto> get topics;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
