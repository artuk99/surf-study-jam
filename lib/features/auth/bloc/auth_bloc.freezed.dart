// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) signIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String login, String password)? signIn,
    TResult Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignOutEvent value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignOutEvent value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$_SignInEventCopyWith<$Res> {
  factory _$$_SignInEventCopyWith(
          _$_SignInEvent value, $Res Function(_$_SignInEvent) then) =
      __$$_SignInEventCopyWithImpl<$Res>;
  $Res call({String login, String password});
}

/// @nodoc
class __$$_SignInEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_SignInEventCopyWith<$Res> {
  __$$_SignInEventCopyWithImpl(
      _$_SignInEvent _value, $Res Function(_$_SignInEvent) _then)
      : super(_value, (v) => _then(v as _$_SignInEvent));

  @override
  _$_SignInEvent get _value => super._value as _$_SignInEvent;

  @override
  $Res call({
    Object? login = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SignInEvent(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInEvent extends _SignInEvent with DiagnosticableTreeMixin {
  const _$_SignInEvent({required this.login, required this.password})
      : super._();

  @override
  final String login;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signIn(login: $login, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.signIn'))
      ..add(DiagnosticsProperty('login', login))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInEvent &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_SignInEventCopyWith<_$_SignInEvent> get copyWith =>
      __$$_SignInEventCopyWithImpl<_$_SignInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) signIn,
    required TResult Function() signOut,
  }) {
    return signIn(login, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String login, String password)? signIn,
    TResult Function()? signOut,
  }) {
    return signIn?.call(login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(login, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignOutEvent value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignInEvent extends AuthEvent {
  const factory _SignInEvent(
      {required final String login,
      required final String password}) = _$_SignInEvent;
  const _SignInEvent._() : super._();

  String get login;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignInEventCopyWith<_$_SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignOutEventCopyWith<$Res> {
  factory _$$_SignOutEventCopyWith(
          _$_SignOutEvent value, $Res Function(_$_SignOutEvent) then) =
      __$$_SignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_SignOutEventCopyWith<$Res> {
  __$$_SignOutEventCopyWithImpl(
      _$_SignOutEvent _value, $Res Function(_$_SignOutEvent) _then)
      : super(_value, (v) => _then(v as _$_SignOutEvent));

  @override
  _$_SignOutEvent get _value => super._value as _$_SignOutEvent;
}

/// @nodoc

class _$_SignOutEvent extends _SignOutEvent with DiagnosticableTreeMixin {
  const _$_SignOutEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.signOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) signIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String login, String password)? signIn,
    TResult Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignOutEvent value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOutEvent extends AuthEvent {
  const factory _SignOutEvent() = _$_SignOutEvent;
  const _SignOutEvent._() : super._();
}

/// @nodoc
mixin _$AuthState {
  TokenDto get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenDto token) inProgress,
    required TResult Function(TokenDto token) authenticated,
    required TResult Function(TokenDto token) unAuthenticated,
    required TResult Function(TokenDto token, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TokenDto token)? inProgress,
    TResult Function(TokenDto token)? authenticated,
    TResult Function(TokenDto token)? unAuthenticated,
    TResult Function(TokenDto token, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenDto token)? inProgress,
    TResult Function(TokenDto token)? authenticated,
    TResult Function(TokenDto token)? unAuthenticated,
    TResult Function(TokenDto token, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgressState value) inProgress,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnAuthenticatedState value) unAuthenticated,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InProgressState value)? inProgress,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgressState value)? inProgress,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call({TokenDto token});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDto,
    ));
  }
}

/// @nodoc
abstract class _$$_InProgressStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_InProgressStateCopyWith(
          _$_InProgressState value, $Res Function(_$_InProgressState) then) =
      __$$_InProgressStateCopyWithImpl<$Res>;
  @override
  $Res call({TokenDto token});
}

/// @nodoc
class __$$_InProgressStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_InProgressStateCopyWith<$Res> {
  __$$_InProgressStateCopyWithImpl(
      _$_InProgressState _value, $Res Function(_$_InProgressState) _then)
      : super(_value, (v) => _then(v as _$_InProgressState));

  @override
  _$_InProgressState get _value => super._value as _$_InProgressState;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_InProgressState(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDto,
    ));
  }
}

/// @nodoc

class _$_InProgressState extends _InProgressState with DiagnosticableTreeMixin {
  const _$_InProgressState({this.token = TokenDto.empty}) : super._();

  @override
  @JsonKey()
  final TokenDto token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.inProgress(token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.inProgress'))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgressState &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_InProgressStateCopyWith<_$_InProgressState> get copyWith =>
      __$$_InProgressStateCopyWithImpl<_$_InProgressState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenDto token) inProgress,
    required TResult Function(TokenDto token) authenticated,
    required TResult Function(TokenDto token) unAuthenticated,
    required TResult Function(TokenDto token, String message) error,
  }) {
    return inProgress(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TokenDto token)? inProgress,
    TResult Function(TokenDto token)? authenticated,
    TResult Function(TokenDto token)? unAuthenticated,
    TResult Function(TokenDto token, String message)? error,
  }) {
    return inProgress?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenDto token)? inProgress,
    TResult Function(TokenDto token)? authenticated,
    TResult Function(TokenDto token)? unAuthenticated,
    TResult Function(TokenDto token, String message)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgressState value) inProgress,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnAuthenticatedState value) unAuthenticated,
    required TResult Function(_ErrorState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InProgressState value)? inProgress,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_ErrorState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgressState value)? inProgress,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressState extends AuthState {
  const factory _InProgressState({final TokenDto token}) = _$_InProgressState;
  const _InProgressState._() : super._();

  @override
  TokenDto get token;
  @override
  @JsonKey(ignore: true)
  _$$_InProgressStateCopyWith<_$_InProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticatedStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthenticatedStateCopyWith(_$_AuthenticatedState value,
          $Res Function(_$_AuthenticatedState) then) =
      __$$_AuthenticatedStateCopyWithImpl<$Res>;
  @override
  $Res call({TokenDto token});
}

/// @nodoc
class __$$_AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthenticatedStateCopyWith<$Res> {
  __$$_AuthenticatedStateCopyWithImpl(
      _$_AuthenticatedState _value, $Res Function(_$_AuthenticatedState) _then)
      : super(_value, (v) => _then(v as _$_AuthenticatedState));

  @override
  _$_AuthenticatedState get _value => super._value as _$_AuthenticatedState;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_AuthenticatedState(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDto,
    ));
  }
}

/// @nodoc

class _$_AuthenticatedState extends _AuthenticatedState
    with DiagnosticableTreeMixin {
  const _$_AuthenticatedState({required this.token}) : super._();

  @override
  final TokenDto token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authenticated(token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authenticated'))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatedState &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticatedStateCopyWith<_$_AuthenticatedState> get copyWith =>
      __$$_AuthenticatedStateCopyWithImpl<_$_AuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenDto token) inProgress,
    required TResult Function(TokenDto token) authenticated,
    required TResult Function(TokenDto token) unAuthenticated,
    required TResult Function(TokenDto token, String message) error,
  }) {
    return authenticated(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TokenDto token)? inProgress,
    TResult Function(TokenDto token)? authenticated,
    TResult Function(TokenDto token)? unAuthenticated,
    TResult Function(TokenDto token, String message)? error,
  }) {
    return authenticated?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenDto token)? inProgress,
    TResult Function(TokenDto token)? authenticated,
    TResult Function(TokenDto token)? unAuthenticated,
    TResult Function(TokenDto token, String message)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgressState value) inProgress,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnAuthenticatedState value) unAuthenticated,
    required TResult Function(_ErrorState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InProgressState value)? inProgress,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_ErrorState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgressState value)? inProgress,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedState extends AuthState {
  const factory _AuthenticatedState({required final TokenDto token}) =
      _$_AuthenticatedState;
  const _AuthenticatedState._() : super._();

  @override
  TokenDto get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatedStateCopyWith<_$_AuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthenticatedStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_UnAuthenticatedStateCopyWith(_$_UnAuthenticatedState value,
          $Res Function(_$_UnAuthenticatedState) then) =
      __$$_UnAuthenticatedStateCopyWithImpl<$Res>;
  @override
  $Res call({TokenDto token});
}

/// @nodoc
class __$$_UnAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_UnAuthenticatedStateCopyWith<$Res> {
  __$$_UnAuthenticatedStateCopyWithImpl(_$_UnAuthenticatedState _value,
      $Res Function(_$_UnAuthenticatedState) _then)
      : super(_value, (v) => _then(v as _$_UnAuthenticatedState));

  @override
  _$_UnAuthenticatedState get _value => super._value as _$_UnAuthenticatedState;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_UnAuthenticatedState(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDto,
    ));
  }
}

/// @nodoc

class _$_UnAuthenticatedState extends _UnAuthenticatedState
    with DiagnosticableTreeMixin {
  const _$_UnAuthenticatedState({this.token = TokenDto.empty}) : super._();

  @override
  @JsonKey()
  final TokenDto token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.unAuthenticated(token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.unAuthenticated'))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnAuthenticatedState &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_UnAuthenticatedStateCopyWith<_$_UnAuthenticatedState> get copyWith =>
      __$$_UnAuthenticatedStateCopyWithImpl<_$_UnAuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenDto token) inProgress,
    required TResult Function(TokenDto token) authenticated,
    required TResult Function(TokenDto token) unAuthenticated,
    required TResult Function(TokenDto token, String message) error,
  }) {
    return unAuthenticated(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TokenDto token)? inProgress,
    TResult Function(TokenDto token)? authenticated,
    TResult Function(TokenDto token)? unAuthenticated,
    TResult Function(TokenDto token, String message)? error,
  }) {
    return unAuthenticated?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenDto token)? inProgress,
    TResult Function(TokenDto token)? authenticated,
    TResult Function(TokenDto token)? unAuthenticated,
    TResult Function(TokenDto token, String message)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgressState value) inProgress,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnAuthenticatedState value) unAuthenticated,
    required TResult Function(_ErrorState value) error,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InProgressState value)? inProgress,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_ErrorState value)? error,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgressState value)? inProgress,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticatedState extends AuthState {
  const factory _UnAuthenticatedState({final TokenDto token}) =
      _$_UnAuthenticatedState;
  const _UnAuthenticatedState._() : super._();

  @override
  TokenDto get token;
  @override
  @JsonKey(ignore: true)
  _$$_UnAuthenticatedStateCopyWith<_$_UnAuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @override
  $Res call({TokenDto token, String message});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, (v) => _then(v as _$_ErrorState));

  @override
  _$_ErrorState get _value => super._value as _$_ErrorState;

  @override
  $Res call({
    Object? token = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorState(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenDto,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState extends _ErrorState with DiagnosticableTreeMixin {
  const _$_ErrorState(
      {this.token = TokenDto.empty, this.message = 'Login Failed'})
      : super._();

  @override
  @JsonKey()
  final TokenDto token;
  @override
  @JsonKey()
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.error(token: $token, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.error'))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenDto token) inProgress,
    required TResult Function(TokenDto token) authenticated,
    required TResult Function(TokenDto token) unAuthenticated,
    required TResult Function(TokenDto token, String message) error,
  }) {
    return error(token, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TokenDto token)? inProgress,
    TResult Function(TokenDto token)? authenticated,
    TResult Function(TokenDto token)? unAuthenticated,
    TResult Function(TokenDto token, String message)? error,
  }) {
    return error?.call(token, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenDto token)? inProgress,
    TResult Function(TokenDto token)? authenticated,
    TResult Function(TokenDto token)? unAuthenticated,
    TResult Function(TokenDto token, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(token, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgressState value) inProgress,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnAuthenticatedState value) unAuthenticated,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InProgressState value)? inProgress,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgressState value)? inProgress,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends AuthState {
  const factory _ErrorState({final TokenDto token, final String message}) =
      _$_ErrorState;
  const _ErrorState._() : super._();

  @override
  TokenDto get token;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
