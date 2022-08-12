import 'package:surf_practice_chat_flutter/features/chat/models/chat_geolocation_dto.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_message_dto.dart';
import 'package:surf_practice_chat_flutter/features/chat/models/chat_user_dto.dart';
import 'package:surf_study_jam/surf_study_jam.dart';

/// Data transfer object representing chat message with geolocation and attached images.
class ChatMessageGeolocationAndImagesDto extends ChatMessageDto {
  /// Location point.
  final ChatGeolocationDto location;

  /// Attached images.
  final List<String>? images;

  /// Constructor for [ChatMessageGeolocationAndImagesDto].
  ChatMessageGeolocationAndImagesDto({
    required ChatUserDto chatUserDto,
    required this.location,
    required this.images,
    required String message,
    required DateTime createdDate,
  }) : super(
          chatUserDto: chatUserDto,
          message: message,
          createdDateTime: createdDate,
        );

  /// Named constructor for converting DTO from [StudyJamClient].
  ChatMessageGeolocationAndImagesDto.fromSJClient({
    required SjMessageDto sjMessageDto,
    required SjUserDto sjUserDto,
  })  : location = ChatGeolocationDto.fromGeoPoint(sjMessageDto.geopoint!),
        images = sjMessageDto.images,
        super(
          createdDateTime: sjMessageDto.created,
          message: sjMessageDto.text,
          chatUserDto: ChatUserDto.fromSJClient(sjUserDto),
        );

  @override
  String toString() =>
      'ChatMessageGeolocationAndImagesDto(location: $location, images: $images) extends ${super.toString()}';
}
