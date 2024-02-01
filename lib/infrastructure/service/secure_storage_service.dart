import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:vault_pass/domain/model/types.dart';

import '../../domain/microtypes/microtypes.dart';
import '../setup/app.locator.dart';

class SecureStorageService {
  final _secureStorage = locator<FlutterSecureStorage>();

  static const _userIdKey = 'userId';
  static const _emailKey = 'email';
  static const _authStateKey = 'authState';
  static const _passwordKey = 'password';
  static const _authState = 'authState';

  Future<bool> isUserUnauthenticated() async {
    final authState = await _getAuthState();
    return authState == AuthState.unauthenticated.name;
  }

  Future<void> persistCredentials(AuthCredentials authCredentials) async {
    await _setUserId(authCredentials.get().userId);
    await _setEmail(authCredentials.get().emailAddress);
    await _setAuthState(authCredentials.get().authState.name);
  }

  Future<AuthCredentials> getAuthCredentials() async {
    final email = await _getEmail();
    final authState = await _getAuthState();
    final userId = await _getUserId();

    return AuthCredentials(userId, email, AuthState.valueOf(authState));
  }

  Future<AuthCredentials> getUserIdCredential() async {
    final userId = await _getUserId();
    final authState = await _getAuthState();
    return AuthCredentials.userId(userId, AuthState.valueOf(authState));
  }

  Future<void> deleteCredentials() async {
    _secureStorage.delete(key: _emailKey);
    _secureStorage.delete(key: _authState);
    _secureStorage.delete(key: _userIdKey);

    // _secureStorage.delete(key: _passwordKey);
  }

  Future _setEmail(String? email) async => await _secureStorage.write(key: _emailKey, value: email);

  Future _setAuthState(String? authState) async =>
      await _secureStorage.write(key: _authState, value: authState);

  Future _setUserId(String? userId) async =>
      await _secureStorage.write(key: _userIdKey, value: userId);

// Future _setPassword(String? password) async {
//   var result = await _secureStorage.write(key: _passwordKey, value: password);
//   return result;
// }

  Future<String?> _getEmail() async => await _secureStorage.read(key: _emailKey);

  Future<String?> _getAuthState() async => await _secureStorage.read(key: _authStateKey);

  Future<String?> _getUserId() async => await _secureStorage.read(key: _userIdKey);

  Future<String?> _getPassword() async => await _secureStorage.read(key: _passwordKey);
}
