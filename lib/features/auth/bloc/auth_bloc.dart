import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_practice_chat_flutter/features/auth/exceptions/auth_exception.dart';
import 'package:surf_practice_chat_flutter/features/auth/models/token_dto.dart';
import 'package:surf_practice_chat_flutter/features/auth/repository/auth_repository.dart';
import 'package:surf_practice_chat_flutter/main.dart';

part 'auth_bloc.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.signIn({
    required final String login,
    required final String password,
  }) = _SignInEvent;

  const factory AuthEvent.signOut() = _SignOutEvent;
}

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.inProgress({
    @Default(TokenDto.empty) final TokenDto token,
  }) = _InProgressState;

  const factory AuthState.authenticated({
    required final TokenDto token,
  }) = _AuthenticatedState;

  const factory AuthState.unAuthenticated({
    @Default(TokenDto.empty) final TokenDto token,
  }) = _UnAuthenticatedState;

  const factory AuthState.error({
    @Default(TokenDto.empty) final TokenDto token,
    @Default('Login Failed') final String message,
  }) = _ErrorState;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required final IAuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState.unAuthenticated()) {
    on<_SignInEvent>(_onSignIn);
    on<_SignOutEvent>(_onSignOut);
  }

  final IAuthRepository _authRepository;

  Future<void> _onSignIn(
    _SignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.inProgress());
    try {
      final token = await _authRepository.signIn(
        login: event.login,
        password: event.password,
      );
      log(token.token);
      studyJamClient = studyJamClient.getAuthorizedClient(token.token);
      emit(AuthState.authenticated(token: token));
    } on AuthException catch (e) {
      emit(AuthState.error(message: e.message));
    }
  }

  Future<void> _onSignOut(
    _SignOutEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.inProgress());
    try {
      await _authRepository.signOut();
    } on AuthException catch (e) {
      emit(AuthState.error(message: e.message));
    }
  }
}
