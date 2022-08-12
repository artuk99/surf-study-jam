import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_practice_chat_flutter/features/auth/bloc/auth_bloc.dart';
import 'package:surf_practice_chat_flutter/features/chat/bloc/chat_bloc.dart';
import 'package:surf_practice_chat_flutter/features/chat/screens/chat_screen.dart';
import 'package:surf_practice_chat_flutter/features/topics/bloc/topic_bloc.dart';
import 'package:surf_practice_chat_flutter/features/topics/models/chat_topic_dto.dart';

/// Screen with different chat topics to go to.
class TopicsScreen extends StatefulWidget {
  /// Constructor for [TopicsScreen].
  const TopicsScreen({Key? key}) : super(key: key);

  @override
  State<TopicsScreen> createState() => _TopicsScreenState();
}

class _TopicsScreenState extends State<TopicsScreen> {
  @override
  void initState() {
    context.read<TopicBloc>().add(const TopicEvent.getTopics());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: _TopicAppBar(),
      ),
      body: BlocBuilder<TopicBloc, TopicState>(
        builder: (context, state) => state.map(
          fetching: (_) => const Center(
            child: CircularProgressIndicator(
              color: Colors.orange,
            ),
          ),
          idle: (state) => _TopicBody(topics: state.topics.reversed),
          error: (state) => _TopicBody(topics: state.topics.reversed),
        ),
      ),
    );
  }
}

class _TopicAppBar extends StatelessWidget {
  const _TopicAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange,
      leading: IconButton(
        onPressed: () {
          context.read<AuthBloc>().add(const AuthEvent.signOut());
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.logout),
      ),
      actions: [
        IconButton(
          onPressed: () =>
              context.read<TopicBloc>().add(const TopicEvent.getTopics()),
          icon: const Icon(Icons.refresh),
        ),
      ],
    );
  }
}

class _TopicBody extends StatelessWidget {
  final Iterable<ChatTopicDto> topics;

  const _TopicBody({
    required this.topics,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: topics.length,
      itemBuilder: (_, index) => _ChatTopic(
        topicData: topics.elementAt(index),
      ),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

class _ChatTopic extends StatelessWidget {
  final ChatTopicDto topicData;

  const _ChatTopic({
    required this.topicData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = topicData.name ?? '';
    final description = topicData.description ?? '';

    return ListTile(
      onTap: () {
        context
            .read<ChatBloc>()
            .add(ChatEvent.initChat(hcatId: topicData.id));
        Navigator.push<ChatScreen>(
          context,
          MaterialPageRoute(
            builder: (_) {
              return const ChatScreen();
            },
          ),
        );
      },
      dense: true,
      title: Text(
        name.isEmpty ? 'Unnamed chat' : name,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: description.isEmpty ? null : Text(description),
    );
  }
}
