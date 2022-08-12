import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:surf_practice_chat_flutter/features/auth/bloc/auth_bloc.dart';
import 'package:surf_practice_chat_flutter/features/chat/bloc/chat_bloc.dart';
import 'package:surf_practice_chat_flutter/features/chat/bloc/message_bloc.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_message_dto.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_message_images_dto.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_message_location_dto.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_message_location_images_dto.dart';
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
  void initState() {
    context.read<ChatBloc>().add(const ChatEvent.getMessages());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ChatBloc, ChatState>(
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
          ),
        ),
        BlocListener<MessageBloc, MessageState>(
          listener: (context, state) => state.mapOrNull(
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
          ),
        ),
      ],
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: _ChatAppBar(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) => Expanded(
                child: state.map(
                  fetching: (_) => const Center(
                    child: CircularProgressIndicator(
                      color: Colors.orange,
                    ),
                  ),
                  idle: (state) => _ChatBody(messages: state.messages.reversed),
                  error: (state) =>
                      _ChatBody(messages: state.messages.reversed),
                ),
              ),
            ),
            _ChatTextField(),
          ],
        ),
      ),
    );
  }
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
  _ChatTextField({Key? key}) : super(key: key);

  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Material(
      color: Colors.white,
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
            BlocBuilder<MessageBloc, MessageState>(
              builder: (context, state) {
                final bool isEnable = state.maybeMap(
                  inProgress: (_) => false,
                  orElse: () => true,
                );

                return ValueListenableBuilder<TextEditingValue>(
                  valueListenable: _textEditingController,
                  builder: (context, email, _) => IconButton(
                    onPressed: _textEditingController.text.isEmpty || !isEnable
                        ? null
                        : () {
                            context.read<MessageBloc>().add(
                                MessageEvent.sendMessage(
                                    chatId:
                                        context.read<ChatBloc>().state.chtId,
                                    message: _textEditingController.text));
                            _textEditingController.clear();
                          },
                    icon: Icon(
                      state.maybeMap(
                          inProgress: (state) => Icons.send_and_archive_rounded,
                          orElse: () => Icons.send),
                    ),
                    color: Colors.orange,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ChatAppBar extends StatelessWidget {
  const _ChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () =>
              context.read<ChatBloc>().add(const ChatEvent.getMessages()),
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
    const localUserMessageBorder = BorderRadius.only(
      topLeft: Radius.circular(8),
      topRight: Radius.circular(8),
      bottomLeft: Radius.circular(8),
    );
    final otherUserMessageBorder = localUserMessageBorder.copyWith(
      bottomLeft: const Radius.circular(0),
      bottomRight: const Radius.circular(8),
    );

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
            if (chatData.chatUserDto is! ChatUserLocalDto) ...[
              _ChatAvatar(userData: chatData.chatUserDto),
              const SizedBox(width: 16),
            ],
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.orange.shade200,
                  borderRadius: (chatData.chatUserDto is! ChatUserLocalDto)
                      ? otherUserMessageBorder
                      : localUserMessageBorder,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (chatData.chatUserDto.name != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          chatData.chatUserDto.name ?? '',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    if (chatData is ChatMessageImagesDto)
                      _AttachedImages(
                          images: (chatData as ChatMessageImagesDto).images),
                    if (chatData is ChatMessageGeolocationDto)
                      _Geolocation(
                        latitude: (chatData as ChatMessageGeolocationDto)
                            .location
                            .latitude,
                        longitude: (chatData as ChatMessageGeolocationDto)
                            .location
                            .longitude,
                      ),
                    if (chatData is ChatMessageGeolocationAndImagesDto) ...[
                      _AttachedImages(
                          images:
                              (chatData as ChatMessageGeolocationAndImagesDto)
                                  .images),
                      const SizedBox(height: 8),
                      _Geolocation(
                        latitude:
                            (chatData as ChatMessageGeolocationAndImagesDto)
                                .location
                                .latitude,
                        longitude:
                            (chatData as ChatMessageGeolocationAndImagesDto)
                                .location
                                .longitude,
                      ),
                    ],
                    Text(chatData.message ?? ''),
                    const SizedBox(height: 8),
                    Text(
                      chatData.createdDateTime.toLocal().toString(),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
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
                ? userData.name!
                    .trim()
                    .split(RegExp(' +'))
                    .map((s) => s[0])
                    .take(2)
                    .join()
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
    } else {
      return const SizedBox(
        height: 50,
        width: 50,
        child: Text('Error'),
      );
    }
  }
}

class _Geolocation extends StatelessWidget {
  const _Geolocation({
    required this.latitude,
    required this.longitude,
    Key? key,
  }) : super(key: key);

  final double latitude;
  final double longitude;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _onLocationTap(lat: latitude, lng: longitude),
      child: Row(
        children: const [
          Icon(Icons.location_on),
          SizedBox(width: 4),
          Text('Click to see user location'),
        ],
      ),
    );
  }

  Future<void> _onLocationTap({
    required double lat,
    required double lng,
  }) async {
    final availableMaps = await MapLauncher.installedMaps;

    await availableMaps.first.showMarker(
      coords: Coords(lat, lng),
      title: "User location",
    );
  }
}
