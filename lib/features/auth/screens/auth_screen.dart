import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_practice_chat_flutter/features/auth/bloc/auth_bloc.dart';
import 'package:surf_practice_chat_flutter/features/chat/screens/chat_screen.dart';

/// Screen for authorization process.
///
/// Contains [IAuthRepository] to do so.
class AuthScreen extends StatefulWidget {
  /// Constructor for [AuthScreen].
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    //костыль для проверки авторизации на старте
    context.read<AuthBloc>().add(const AuthEvent.signIn(
          login: '',
          password: '',
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) => state.mapOrNull<void>(
        error: (state) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red.shade300,
            content: Text(
              state.message,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        authenticated: (state) => Navigator.push<ChatScreen>(
          context,
          MaterialPageRoute(
            builder: (_) {
              return const ChatScreen();
            },
          ),
        ),
      ),
      builder: (context, state) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 24),
              _LoginTextField(
                controller: _loginController,
              ),
              const SizedBox(height: 16),
              _PasswordTextField(
                controller: _passwordController,
              ),
              const SizedBox(height: 16),
              ValueListenableBuilder<TextEditingValue>(
                valueListenable: _loginController,
                builder: (context, login, _) =>
                    ValueListenableBuilder<TextEditingValue>(
                  valueListenable: _passwordController,
                  builder: (context, password, _) {
                    final bool isEnable = state.maybeMap(
                      inProgress: (_) => false,
                      orElse: () => true,
                    );

                    return MaterialButton(
                      onPressed: (login.text.isEmpty || password.text.isEmpty || !isEnable)
                          ? null
                          : () => context.read<AuthBloc>().add(AuthEvent.signIn(
                                login: login.text,
                                password: password.text,
                              )),
                      color: Colors.orange,
                      disabledColor: Colors.orange.shade300,
                      textColor: Colors.white,
                      disabledTextColor: Colors.grey.shade300,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        'Войти',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    );
                  },
                ),
              ),
              // const SizedBox(height: 10),
              // const LinearProgressIndicator(
              //   color: Colors.orange,
              //   backgroundColor: Colors.transparent,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginTextField extends StatefulWidget {
  const _LoginTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  State<_LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<_LoginTextField> {
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 2,
        color: Colors.orange.shade200,
      ),
    );

    return TextFormField(
      controller: widget.controller,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        // counterText: ' ',
        errorMaxLines: 2,
        labelText: 'login',
        labelStyle: TextStyle(color: Colors.orange.shade800),
        border: border,
        focusedBorder: border.copyWith(
          borderSide: const BorderSide(
            width: 2,
            color: Colors.orange,
          ),
        ),
        enabledBorder: border.copyWith(
          borderSide: const BorderSide(
            width: 2,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}

class _PasswordTextField extends StatefulWidget {
  const _PasswordTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  State<_PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<_PasswordTextField> {
  bool _isObscure = true;

  void _changeVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 2,
        color: Colors.orange.shade200,
      ),
    );

    return TextFormField(
      controller: widget.controller,
      obscureText: _isObscure,
      decoration: InputDecoration(
        labelText: 'password',
        labelStyle: TextStyle(color: Colors.orange.shade800),
        suffixIcon: GestureDetector(
          onTap: _changeVisibility,
          child: Icon(
            _isObscure ? Icons.visibility_off : Icons.visibility,
            color: Colors.black,
          ),
        ),
        border: border,
        focusedBorder: border.copyWith(
          borderSide: const BorderSide(
            width: 2,
            color: Colors.orange,
          ),
        ),
        enabledBorder: border.copyWith(
          borderSide: const BorderSide(
            width: 2,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
