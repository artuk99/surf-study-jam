// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageEvent {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessageEvent value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendMessageEvent value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessageEvent value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageEventCopyWith<MessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res> implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  final MessageEvent _value;
  // ignore: unused_field
  final $Res Function(MessageEvent) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SendMessageEventCopyWith<$Res>
    implements $MessageEventCopyWith<$Res> {
  factory _$$_SendMessageEventCopyWith(
          _$_SendMessageEvent value, $Res Function(_$_SendMessageEvent) then) =
      __$$_SendMessageEventCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$_SendMessageEventCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements _$$_SendMessageEventCopyWith<$Res> {
  __$$_SendMessageEventCopyWithImpl(
      _$_SendMessageEvent _value, $Res Function(_$_SendMessageEvent) _then)
      : super(_value, (v) => _then(v as _$_SendMessageEvent));

  @override
  _$_SendMessageEvent get _value => super._value as _$_SendMessageEvent;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_SendMessageEvent(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SendMessageEvent extends _SendMessageEvent {
  const _$_SendMessageEvent({required this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'MessageEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessageEvent &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_SendMessageEventCopyWith<_$_SendMessageEvent> get copyWith =>
      __$$_SendMessageEventCopyWithImpl<_$_SendMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) sendMessage,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? sendMessage,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessageEvent value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendMessageEvent value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessageEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessageEvent extends MessageEvent {
  const factory _SendMessageEvent({required final String? message}) =
      _$_SendMessageEvent;
  const _SendMessageEvent._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_SendMessageEventCopyWith<_$_SendMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageState {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) idle,
    required TResult Function(String message) success,
    required TResult Function(String message, String errorMessage) error,
    required TResult Function(String message) inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? idle,
    TResult Function(String message)? success,
    TResult Function(String message, String errorMessage)? error,
    TResult Function(String message)? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? idle,
    TResult Function(String message)? success,
    TResult Function(String message, String errorMessage)? error,
    TResult Function(String message)? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleState value) idle,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_InProgressState value) inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    TResult Function(_InProgressState value)? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    TResult Function(_InProgressState value)? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageStateCopyWith<MessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res> implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  final MessageState _value;
  // ignore: unused_field
  final $Res Function(MessageState) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_IdleStateCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$$_IdleStateCopyWith(
          _$_IdleState value, $Res Function(_$_IdleState) then) =
      __$$_IdleStateCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_IdleStateCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$$_IdleStateCopyWith<$Res> {
  __$$_IdleStateCopyWithImpl(
      _$_IdleState _value, $Res Function(_$_IdleState) _then)
      : super(_value, (v) => _then(v as _$_IdleState));

  @override
  _$_IdleState get _value => super._value as _$_IdleState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_IdleState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IdleState extends _IdleState {
  const _$_IdleState({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'MessageState.idle(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdleState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_IdleStateCopyWith<_$_IdleState> get copyWith =>
      __$$_IdleStateCopyWithImpl<_$_IdleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) idle,
    required TResult Function(String message) success,
    required TResult Function(String message, String errorMessage) error,
    required TResult Function(String message) inProgress,
  }) {
    return idle(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? idle,
    TResult Function(String message)? success,
    TResult Function(String message, String errorMessage)? error,
    TResult Function(String message)? inProgress,
  }) {
    return idle?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? idle,
    TResult Function(String message)? success,
    TResult Function(String message, String errorMessage)? error,
    TResult Function(String message)? inProgress,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleState value) idle,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_InProgressState value) inProgress,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    TResult Function(_InProgressState value)? inProgress,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    TResult Function(_InProgressState value)? inProgress,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleState extends MessageState {
  const factory _IdleState({required final String message}) = _$_IdleState;
  const _IdleState._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_IdleStateCopyWith<_$_IdleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, (v) => _then(v as _$_SuccessState));

  @override
  _$_SuccessState get _value => super._value as _$_SuccessState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_SuccessState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SuccessState extends _SuccessState {
  const _$_SuccessState({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'MessageState.success(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      __$$_SuccessStateCopyWithImpl<_$_SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) idle,
    required TResult Function(String message) success,
    required TResult Function(String message, String errorMessage) error,
    required TResult Function(String message) inProgress,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? idle,
    TResult Function(String message)? success,
    TResult Function(String message, String errorMessage)? error,
    TResult Function(String message)? inProgress,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? idle,
    TResult Function(String message)? success,
    TResult Function(String message, String errorMessage)? error,
    TResult Function(String message)? inProgress,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleState value) idle,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_InProgressState value) inProgress,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    TResult Function(_InProgressState value)? inProgress,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    TResult Function(_InProgressState value)? inProgress,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState extends MessageState {
  const factory _SuccessState({required final String message}) =
      _$_SuccessState;
  const _SuccessState._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @override
  $Res call({String message, String errorMessage});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, (v) => _then(v as _$_ErrorState));

  @override
  _$_ErrorState get _value => super._value as _$_ErrorState;

  @override
  $Res call({
    Object? message = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState extends _ErrorState {
  const _$_ErrorState(
      {required this.message, this.errorMessage = 'Failed to send message'})
      : super._();

  @override
  final String message;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'MessageState.error(message: $message, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) idle,
    required TResult Function(String message) success,
    required TResult Function(String message, String errorMessage) error,
    required TResult Function(String message) inProgress,
  }) {
    return error(message, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? idle,
    TResult Function(String message)? success,
    TResult Function(String message, String errorMessage)? error,
    TResult Function(String message)? inProgress,
  }) {
    return error?.call(message, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? idle,
    TResult Function(String message)? success,
    TResult Function(String message, String errorMessage)? error,
    TResult Function(String message)? inProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleState value) idle,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_InProgressState value) inProgress,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    TResult Function(_InProgressState value)? inProgress,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    TResult Function(_InProgressState value)? inProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends MessageState {
  const factory _ErrorState(
      {required final String message,
      final String errorMessage}) = _$_ErrorState;
  const _ErrorState._() : super._();

  @override
  String get message;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProgressStateCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$$_InProgressStateCopyWith(
          _$_InProgressState value, $Res Function(_$_InProgressState) then) =
      __$$_InProgressStateCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_InProgressStateCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res>
    implements _$$_InProgressStateCopyWith<$Res> {
  __$$_InProgressStateCopyWithImpl(
      _$_InProgressState _value, $Res Function(_$_InProgressState) _then)
      : super(_value, (v) => _then(v as _$_InProgressState));

  @override
  _$_InProgressState get _value => super._value as _$_InProgressState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_InProgressState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InProgressState extends _InProgressState {
  const _$_InProgressState({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'MessageState.inProgress(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgressState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_InProgressStateCopyWith<_$_InProgressState> get copyWith =>
      __$$_InProgressStateCopyWithImpl<_$_InProgressState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) idle,
    required TResult Function(String message) success,
    required TResult Function(String message, String errorMessage) error,
    required TResult Function(String message) inProgress,
  }) {
    return inProgress(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? idle,
    TResult Function(String message)? success,
    TResult Function(String message, String errorMessage)? error,
    TResult Function(String message)? inProgress,
  }) {
    return inProgress?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? idle,
    TResult Function(String message)? success,
    TResult Function(String message, String errorMessage)? error,
    TResult Function(String message)? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleState value) idle,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_InProgressState value) inProgress,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    TResult Function(_InProgressState value)? inProgress,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleState value)? idle,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    TResult Function(_InProgressState value)? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressState extends MessageState {
  const factory _InProgressState({required final String message}) =
      _$_InProgressState;
  const _InProgressState._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_InProgressStateCopyWith<_$_InProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}
