//add local secure storage
//import '../../application/register/register_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:vault_pass/domain/microtypes/microtypes.dart';
import 'package:vault_pass/infrastructure/repository/user_repository.dart';
import 'package:vault_pass/infrastructure/service/secure_storage_service.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';

import '../../domain/failures/auth_failure.dart';
import '../../domain/model/user.dart';

class UserService {
  final UserRepository _userRepository;
  final SecureStorageService _secureStorageService;

  UserService()
      : _userRepository = locator<UserRepository>(),
        _secureStorageService = locator<SecureStorageService>();

  Future<AuthCredentials> getAuthCredentials() {
    return _secureStorageService.getAuthCredentials();
  }

  ///Docs: Checks if the credentials matches with the user from the database
  ///Return: Authenticated User or AuthFailure
  Future<Either<AuthFailure, AuthCredentials>> authenticateUser(
      EmailAddress emailAddress, Password password) async {
    final credentials = await _userRepository.authenticateUser(emailAddress, password);
    AuthCredentials authCredentials = credentials.fold(
      (authFailure) => throw Exception('Failed to get AuthCredentials: $authFailure'),
      //TODO: show this in the UI for the user
      (authCredentials) => authCredentials,
    );
    _secureStorageService.persistCredentials(authCredentials);
    return credentials;
  }

  Future<Either<AuthFailure, Unit>> registerUser(User user) async {
    final userResponse = await _userRepository.addUser(user);
    await _secureStorageService.persistCredentials(AuthCredentials.authenticated());
    return userResponse;
  }

  Future<User> getUser(UniqueId uniqueId) async {
    final userResponse = await _userRepository.getUser(uniqueId);
    return userResponse;
  }

  Future<void> signOut() async {
    await _secureStorageService.deleteCredentials();
  }

  Future<User> _getUser(UniqueId userId) async {
    return _userRepository.getUser(userId);
  }
}
