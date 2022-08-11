import 'package:surf_practice_chat_flutter/features/chat/models/chat_message_dto.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_user_dto.dart';
import 'package:surf_study_jam/surf_study_jam.dart';

/// Data transfer object representing chat message with attached images.
class ChatMessageImagesDto extends ChatMessageDto {
  /// Attached images.
  final List<String>? images;

  /// Constructor for [ChatMessageImagesDto].
  ChatMessageImagesDto({
    required ChatUserDto chatUserDto,
    required this.images,
    required String message,
    required DateTime createdDate,
  }) : super(
          chatUserDto: chatUserDto,
          message: message,
          createdDateTime: createdDate,
        );

  /// Named constructor for converting DTO from [StudyJamClient].
  ChatMessageImagesDto.fromSJClient({
    required SjMessageDto sjMessageDto,
    required SjUserDto sjUserDto,
  })  : images = sjMessageDto.images,
        super(
          createdDateTime: sjMessageDto.created,
          message: sjMessageDto.text,
          chatUserDto: ChatUserDto.fromSJClient(sjUserDto),
        );

  @override
  String toString() => 'ChatMessageImagesDto(images: $images) extends ${super.toString()}';
}
