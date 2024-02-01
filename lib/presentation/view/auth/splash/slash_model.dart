import 'package:fpdart/fpdart.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:vault_pass/domain/auth/auth_facade.dart';
import 'package:vault_pass/domain/core/extensions.dart';
import 'package:vault_pass/domain/model/token.dart';
import 'package:vault_pass/domain/model/types.dart';
import 'package:vault_pass/infrastructure/service/biometrics_service.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';
import 'package:vault_pass/infrastructure/setup/app.logger.dart';
import 'package:vault_pass/infrastructure/setup/app.router.dart';

class SplashViewModel extends BaseViewModel {
  final log = getLogger('SplashModel');

  final _router = locator<RouterService>();
  final _authFacade = locator<IAuthFacade>();

  // AuthType isAuthenticated() {
  //   return _authService.isAuthenticated;
  // }

  Future<void> checkAuth() async {
    var result = null;
    // VERIFY IF IT WAS LOGIN WITH PASSWORD
    final futureCredentials = await _authFacade.getCredentials();
    final eitherAuthCredentials =
        futureCredentials.value.fold((l) => Either.left(l), (r) => Either.right(r));

    if (eitherAuthCredentials.isLeft()) {
      final error = eitherAuthCredentials.asLeft();
      //TODO: Here I think we should throw some error based on the response
      result = AuthState.unauthenticated;
    } else {
      final token = eitherAuthCredentials.asRight() as Token;
      if (token.emailAddress != null && token.authState == AuthState.authorizedCredentials) {
        /// IN THIS POINT THE USER ALREADY PASSED THE LOGIN PAGE
        final isAuthenticated = await BiometricsService.authenticate();
        if (isAuthenticated) {
          //# If Biometrics work -> HomeView
          result = AuthState.authorizedBiometrics;
        } else {
          //# If Biometrics do not work redirect to -> LoginView
          result = AuthState.authorizedCredentials;
        }
      }
      if (token.emailAddress != null && token.authState == AuthState.authorizedBiometrics) {
        result = AuthState.authorizedBiometrics; //# -> LoginView
      } else {
        result = AuthState.unauthenticated; //# -> RegisterView
      }
    }
    navigateTo(result, futureCredentials.value.asRight().userId);
  }

  void navigateTo(AuthState authState, String? userId) {
    switch (authState) {
      case AuthState.unauthenticated:
        _router.replaceWithRegisterView();
      case AuthState.authenticated:
        _router.replaceWithLoginView();
      case AuthState.authorizedCredentials:
        _router.replaceWithHomeView(userId: userId!);
      case AuthState.authorizedBiometrics:
        _router.replaceWithAboutUsSettingsView();
      case AuthState.authorizedPin:
      // TODO: Handle this case.
    }
  }
}
