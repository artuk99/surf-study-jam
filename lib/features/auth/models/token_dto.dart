import 'package:flutter/foundation.dart';

/// DTO, containing auth token.
///
/// May be scaled, to implement token's duration & toJson() fromJson() methods.
@immutable
class TokenDto {
  /// Constructor for [TokenDto].
  const TokenDto({
    required this.token,
  });

  /// Token's value.
  final String token;

  static const empty = TokenDto(token: '');

  bool get isEmpty => this == TokenDto.empty;
  
  @override
  String toString() {
    return 'TokenDto(token: $token)';
  }
}
