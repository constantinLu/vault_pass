import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';
import 'package:vault_pass/infrastructure/setup/app.router.dart';

class UnknownViewModel extends BaseViewModel {
  final _router = locator<RouterService>();

  Future<void> navigateToLogin() async {
    await _router.clearStackAndShow(const LoginViewRoute());
  }
}
