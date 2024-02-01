import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:vault_pass/domain/core/extensions.dart';
import 'package:vault_pass/domain/microtypes/microtypes.dart';
import 'package:vault_pass/domain/model/user.dart';
import 'package:vault_pass/infrastructure/service/user_service.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';
import 'package:vault_pass/infrastructure/setup/app.router.dart';
import 'package:vault_pass/presentation/view/auth/login/login_view.form.dart';

class LoginViewModel extends FormViewModel {
  final _router = locator<RouterService>();
  final _userService = locator<UserService>();

  final user = User.emptyUser();

  void initializeForm() async {
    // final authenticationCredentials = await _userService.getAuthCredentials();
    // emailValue = (authenticationCredentials.get().emailAddress as String?);
    // passwordValue = "password";novsetValidationMessage(null);
  }

  Future<void> onAccept() async {
    var credentials = await _userService.authenticateUser(
        EmailAddress.value(formValueMap[EmailValueKey]),
        Password.value(formValueMap[PasswordValueKey]));

    notifyListeners();

    if (!isFormValid) {
      //here maybe compose all the errors
      setValidationMessage("User credentials not valid");
      rebuildUi();
      return;
    }
    await _router.navigateToHomeView(userId: credentials.asRight().value.asRight().userId!);
  }

  void onCancel() {
    clearForm();
    setValidationMessage(null);
    //maybe redirect to dashboard ?
  }

  bool canAccept() {
    return isFormValid;
  }

  void navigateToRegisterView() {
    _router.navigateToRegisterView();
  }
}
