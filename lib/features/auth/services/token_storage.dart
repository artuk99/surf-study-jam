import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:surf_practice_chat_flutter/features/auth/models/token_dto.dart';

class TokenStorage {
  TokenStorage() : _storage = const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  Future<void> save({required TokenDto token}) async {
    await _storage.write(key: 'token', value: token.token);
  }

  Future<TokenDto?> read() async {
    final token = await _storage.read(key: 'token');
    return token == null ? null : TokenDto(token: token);
  }
}