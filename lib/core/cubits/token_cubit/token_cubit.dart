import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../services/hive/box_key.dart';

class TokenCubit extends Cubit<String?> {
  final FlutterSecureStorage _secureStorage;

  TokenCubit(this._secureStorage) : super(null) {
    _readTokenFromStorage();
  }

  Future<void> _readTokenFromStorage() async {
    final token = await _secureStorage.read(key: BoxKey.token);
    emit(token);
  }

  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: BoxKey.token, value: token);
    emit(token);
  }

  Future<void> deleteToken() async {
    await _secureStorage.delete(key: BoxKey.token);
    emit(null);
  }

  Future<void> updateToken(String token) async {
    await _secureStorage.write(key: BoxKey.token, value: token);
    emit(token);
  }
}
