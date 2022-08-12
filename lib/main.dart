import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_practice_chat_flutter/features/auth/bloc/auth_bloc.dart';
import 'package:surf_practice_chat_flutter/features/auth/repository/auth_repository.dart';
import 'package:surf_practice_chat_flutter/features/auth/screens/auth_screen.dart';
import 'package:surf_practice_chat_flutter/features/auth/services/token_storage.dart';
import 'package:surf_practice_chat_flutter/features/chat/bloc/chat_bloc.dart';
import 'package:surf_practice_chat_flutter/features/chat/bloc/message_bloc.dart';
import 'package:surf_practice_chat_flutter/features/chat/repository/chat_repository.dart';
import 'package:surf_study_jam/surf_study_jam.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

var studyJamClient = StudyJamClient();

/// App,s main widget.
class MyApp extends StatelessWidget {
  /// Constructor for [MyApp].
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => AuthBloc(
            authRepository: AuthRepository(studyJamClient: studyJamClient),
            tokenStorage: TokenStorage(),
          ),
        ),
        BlocProvider<ChatBloc>(
          create: (_) => ChatBloc(
              chatRepository: ChatRepository(studyJamClient: studyJamClient)),
        ),
        BlocProvider<MessageBloc>(
          create: (_) => MessageBloc(
              chatRepository: ChatRepository(studyJamClient: studyJamClient)),
        ),
      ],
      child: const MaterialApp(
        home: AuthScreen(),
      ),
    );
  }
}
