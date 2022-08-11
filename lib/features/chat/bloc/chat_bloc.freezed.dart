// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessagesEvent value) getMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMessagesEvent value)? getMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessagesEvent value)? getMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class _$$_GetMessagesEventCopyWith<$Res> {
  factory _$$_GetMessagesEventCopyWith(
          _$_GetMessagesEvent value, $Res Function(_$_GetMessagesEvent) then) =
      __$$_GetMessagesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetMessagesEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_GetMessagesEventCopyWith<$Res> {
  __$$_GetMessagesEventCopyWithImpl(
      _$_GetMessagesEvent _value, $Res Function(_$_GetMessagesEvent) _then)
      : super(_value, (v) => _then(v as _$_GetMessagesEvent));

  @override
  _$_GetMessagesEvent get _value => super._value as _$_GetMessagesEvent;
}

/// @nodoc

class _$_GetMessagesEvent extends _GetMessagesEvent {
  const _$_GetMessagesEvent() : super._();

  @override
  String toString() {
    return 'ChatEvent.getMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetMessagesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMessages,
  }) {
    return getMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMessages,
  }) {
    return getMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMessages,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessagesEvent value) getMessages,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMessagesEvent value)? getMessages,
  }) {
    return getMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessagesEvent value)? getMessages,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class _GetMessagesEvent extends ChatEvent {
  const factory _GetMessagesEvent() = _$_GetMessagesEvent;
  const _GetMessagesEvent._() : super._();
}

/// @nodoc
mixin _$ChatState {
  List<ChatMessageDto> get messages => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageDto> messages) fetching,
    required TResult Function(List<ChatMessageDto> messages) idle,
    required TResult Function(List<ChatMessageDto> messages, String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatMessageDto> messages)? fetching,
    TResult Function(List<ChatMessageDto> messages)? idle,
    TResult Function(List<ChatMessageDto> messages, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageDto> messages)? fetching,
    TResult Function(List<ChatMessageDto> messages)? idle,
    TResult Function(List<ChatMessageDto> messages, String message)? error,
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
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call({List<ChatMessageDto> messages});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_FetchingStateCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$_FetchingStateCopyWith(
          _$_FetchingState value, $Res Function(_$_FetchingState) then) =
      __$$_FetchingStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ChatMessageDto> messages});
}

/// @nodoc
class __$$_FetchingStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$$_FetchingStateCopyWith<$Res> {
  __$$_FetchingStateCopyWithImpl(
      _$_FetchingState _value, $Res Function(_$_FetchingState) _then)
      : super(_value, (v) => _then(v as _$_FetchingState));

  @override
  _$_FetchingState get _value => super._value as _$_FetchingState;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_$_FetchingState(
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageDto>,
    ));
  }
}

/// @nodoc

class _$_FetchingState extends _FetchingState {
  const _$_FetchingState({required final List<ChatMessageDto> messages})
      : _messages = messages,
        super._();

  final List<ChatMessageDto> _messages;
  @override
  List<ChatMessageDto> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.fetching(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchingState &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  _$$_FetchingStateCopyWith<_$_FetchingState> get copyWith =>
      __$$_FetchingStateCopyWithImpl<_$_FetchingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageDto> messages) fetching,
    required TResult Function(List<ChatMessageDto> messages) idle,
    required TResult Function(List<ChatMessageDto> messages, String message)
        error,
  }) {
    return fetching(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatMessageDto> messages)? fetching,
    TResult Function(List<ChatMessageDto> messages)? idle,
    TResult Function(List<ChatMessageDto> messages, String message)? error,
  }) {
    return fetching?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageDto> messages)? fetching,
    TResult Function(List<ChatMessageDto> messages)? idle,
    TResult Function(List<ChatMessageDto> messages, String message)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(messages);
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

abstract class _FetchingState extends ChatState {
  const factory _FetchingState({required final List<ChatMessageDto> messages}) =
      _$_FetchingState;
  const _FetchingState._() : super._();

  @override
  List<ChatMessageDto> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_FetchingStateCopyWith<_$_FetchingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IdleStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_IdleStateCopyWith(
          _$_IdleState value, $Res Function(_$_IdleState) then) =
      __$$_IdleStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ChatMessageDto> messages});
}

/// @nodoc
class __$$_IdleStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$$_IdleStateCopyWith<$Res> {
  __$$_IdleStateCopyWithImpl(
      _$_IdleState _value, $Res Function(_$_IdleState) _then)
      : super(_value, (v) => _then(v as _$_IdleState));

  @override
  _$_IdleState get _value => super._value as _$_IdleState;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_$_IdleState(
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageDto>,
    ));
  }
}

/// @nodoc

class _$_IdleState extends _IdleState {
  const _$_IdleState({required final List<ChatMessageDto> messages})
      : _messages = messages,
        super._();

  final List<ChatMessageDto> _messages;
  @override
  List<ChatMessageDto> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.idle(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdleState &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  _$$_IdleStateCopyWith<_$_IdleState> get copyWith =>
      __$$_IdleStateCopyWithImpl<_$_IdleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageDto> messages) fetching,
    required TResult Function(List<ChatMessageDto> messages) idle,
    required TResult Function(List<ChatMessageDto> messages, String message)
        error,
  }) {
    return idle(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatMessageDto> messages)? fetching,
    TResult Function(List<ChatMessageDto> messages)? idle,
    TResult Function(List<ChatMessageDto> messages, String message)? error,
  }) {
    return idle?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageDto> messages)? fetching,
    TResult Function(List<ChatMessageDto> messages)? idle,
    TResult Function(List<ChatMessageDto> messages, String message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(messages);
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

abstract class _IdleState extends ChatState {
  const factory _IdleState({required final List<ChatMessageDto> messages}) =
      _$_IdleState;
  const _IdleState._() : super._();

  @override
  List<ChatMessageDto> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_IdleStateCopyWith<_$_IdleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ChatMessageDto> messages, String message});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, (v) => _then(v as _$_ErrorState));

  @override
  _$_ErrorState get _value => super._value as _$_ErrorState;

  @override
  $Res call({
    Object? messages = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorState(
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageDto>,
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
      {required final List<ChatMessageDto> messages,
      this.message = 'Failed to update chat'})
      : _messages = messages,
        super._();

  final List<ChatMessageDto> _messages;
  @override
  List<ChatMessageDto> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ChatState.error(messages: $messages, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageDto> messages) fetching,
    required TResult Function(List<ChatMessageDto> messages) idle,
    required TResult Function(List<ChatMessageDto> messages, String message)
        error,
  }) {
    return error(messages, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatMessageDto> messages)? fetching,
    TResult Function(List<ChatMessageDto> messages)? idle,
    TResult Function(List<ChatMessageDto> messages, String message)? error,
  }) {
    return error?.call(messages, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageDto> messages)? fetching,
    TResult Function(List<ChatMessageDto> messages)? idle,
    TResult Function(List<ChatMessageDto> messages, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(messages, message);
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

abstract class _ErrorState extends ChatState {
  const factory _ErrorState(
      {required final List<ChatMessageDto> messages,
      final String message}) = _$_ErrorState;
  const _ErrorState._() : super._();

  @override
  List<ChatMessageDto> get messages;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
