import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:vault_pass/domain/microtypes/microtypes.dart';
import 'package:vault_pass/domain/model/user.dart';
import 'package:vault_pass/infrastructure/service/user_service.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';
import 'package:vault_pass/infrastructure/setup/app.router.dart';
import 'package:vault_pass/presentation/view/auth/register/register_view.form.dart';

class RegisterViewModel extends FormViewModel {
  final _router = locator<RouterService>();
  final _userService = locator<UserService>();

  late User registerUser;

  void initializeForm() async {
    setValidationMessage(null);
  }

  Future<void> onAccept() async {
    User user = User.create(
        Name.value(formValueMap[FirstNameValueKey]),
        Name.value(formValueMap[LastNameValueKey]),
        EmailAddress.value(formValueMap[EmailValueKey]),
        Password.value(formValueMap[PasswordValueKey]));

    _userService.registerUser(user);
    notifyListeners();

    if (!isFormValid) {
      //here maybe compose all the errors
      setValidationMessage("User credentials not valid");
      rebuildUi();
      return;
    }

    await _router.navigateTo(LoginViewRoute());
    //arguments: LoginViewArguments(email: user.emailAddress.get()));
  }

// void onCancel() {
//   clearForm();
//   setValidationMessage(null);
//   //maybe redirect to dashboard ?
// }
//
// bool canAccept() {
//   return isFormValid;
// }

  void navigateToLoginView() {
    _router.navigateToLoginView();
  }
}
