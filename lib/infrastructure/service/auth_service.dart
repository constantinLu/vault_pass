import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:vault_pass/domain/failures/auth_failure.dart';
import 'package:vault_pass/domain/microtypes/microtypes.dart';
import 'package:vault_pass/domain/model/types.dart';
import 'package:vault_pass/domain/model/user.dart';
import 'package:vault_pass/infrastructure/service/user_service.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';

import '../../domain/auth/auth_facade.dart';

class AuthService implements IAuthFacade {
  final UserService userService;

  AuthService() : userService = locator<UserService>();

  @override
  Future<AuthCredentials> getCredentials() {
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => AuthCredentials.authCredentials("asd", "asd", AuthState.authorizedBiometrics),
    );
    //return userService.getAuthCredentials();
  }

  @override
  Future<Either<AuthFailure, AuthCredentials>> login({
    required EmailAddress emailAddress,
    required Password password,
  }) {
    return userService.authenticateUser(emailAddress, password);
  }

  @override
  Future<Either<AuthFailure, Unit>> register({required User user}) {
    return userService.registerUser(user);
  }

  @override
  Future<void> signOut() async {
    userService.signOut();
  }
}
