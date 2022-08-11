import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:surf_practice_chat_flutter/features/auth/bloc/auth_bloc.dart';
import 'package:surf_practice_chat_flutter/features/chat/bloc/chat_bloc.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_message_dto.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_message_images_dto.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_user_dto.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_user_local_dto.dart';

/// Main screen of chat app, containing messages.
class ChatScreen extends StatefulWidget {
  /// Constructor for [ChatScreen].
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) => Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: _ChatAppBar(
            controller: _nameEditingController,
            onUpdatePressed: () =>
                context.read<ChatBloc>().add(const ChatEvent.getMessages()),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: _ChatBody(
                messages: state.messages,
              ),
            ),
            _ChatTextField(onSendPressed: (s) {}),
            // _onSendPressed),
          ],
        ),
      ),
    );
  }

  // Future<void> _onUpdatePressed() async {
  //   final messages = await widget.chatRepository.getMessages();
  //   setState(() {
  //     _currentMessages = messages;
  //   });
  // }

  // Future<void> _onSendPressed(String messageText) async {
  //   final messages = await widget.chatRepository.sendMessage(messageText);
  //   setState(() {
  //     _currentMessages = messages;
  //   });
  // }
}

class _ChatBody extends StatelessWidget {
  final Iterable<ChatMessageDto> messages;

  const _ChatBody({
    required this.messages,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (_, index) => _ChatMessage(
        chatData: messages.elementAt(index),
      ),
    );
  }
}

class _ChatTextField extends StatelessWidget {
  final ValueChanged<String> onSendPressed;

  final _textEditingController = TextEditingController();

  _ChatTextField({
    required this.onSendPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      color: colorScheme.surface,
      elevation: 12,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: mediaQuery.padding.bottom + 8,
          left: 16,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Сообщение',
                ),
              ),
            ),
            IconButton(
              onPressed: () => onSendPressed(_textEditingController.text),
              icon: const Icon(Icons.send),
              color: colorScheme.onSurface,
            ),
          ],
        ),
      ),
    );
  }
}

class _ChatAppBar extends StatelessWidget {
  final VoidCallback onUpdatePressed;
  final TextEditingController controller;

  const _ChatAppBar({
    required this.onUpdatePressed,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange,
      leading: IconButton(
        onPressed: () =>
            context.read<AuthBloc>().add(const AuthEvent.signOut()),
        icon: const Icon(Icons.logout),
      ),
      actions: [
        IconButton(
          onPressed: onUpdatePressed,
          icon: const Icon(Icons.refresh),
        ),
      ],
    );
  }
}

class _ChatMessage extends StatelessWidget {
  final ChatMessageDto chatData;

  const _ChatMessage({
    required this.chatData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      color: chatData.chatUserDto is ChatUserLocalDto
          ? colorScheme.primary.withOpacity(.1)
          : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 18,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _ChatAvatar(userData: chatData.chatUserDto),
            const SizedBox(width: 16),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.orange.shade200,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      chatData.chatUserDto.name ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    if (chatData is ChatMessageImagesDto)
                      _AttachedImages(
                          images: (chatData as ChatMessageImagesDto).images),
                    // ListView.builder(
                    //   itemCount: (chatData as ChatMessageImagesDto).images.l,
                    //   itemBuilder: (),
                    //   children: [
                    //     (chatData as ChatMessageImagesDto)
                    //         .images
                    //         .map((e) => Image.network(e))
                    //         .toList()
                    //   ],
                    // ),
                    Text(chatData.message ?? ''),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChatAvatar extends StatelessWidget {
  static const double _size = 42;

  final ChatUserDto userData;

  const _ChatAvatar({
    required this.userData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: _size,
      height: _size,
      child: Material(
        color: colorScheme.primary,
        shape: const CircleBorder(),
        child: Center(
          child: Text(
            userData.name != null
                ? '${userData.name!.split(' ').first[0]}${userData.name!.split(' ').last[0]}'
                : '',
            style: TextStyle(
              color: colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}

class _AttachedImages extends StatelessWidget {
  const _AttachedImages({
    required this.images,
    Key? key,
  }) : super(key: key);

  final List<String>? images;

  @override
  Widget build(BuildContext context) {
    if (images != null) {
      return StaggeredGrid.count(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          ...images!.map((i) => Image.network(
                i,
                errorBuilder: (context, exception, stackTrace) =>
                    const Text('error'),
              ))
        ],
      );
      // Image.network(
      //   images!.first,
      //   errorBuilder: (context, exception, stackTrace) => const Text('error'),
      // );
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images!.length,
        itemBuilder: (_, i) => Image.network(images![i]),
      );
    } else {
      return const Text('Error');
    }
  }
}
