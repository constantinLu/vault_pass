import 'package:stacked/stacked.dart';
import 'package:vault_pass/infrastructure/service/secure_storage_service.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';
import 'package:vault_pass/infrastructure/setup/app.router.dart';

class AuthGuard extends StackedRouteGuard {
  @override
  Future<void> onNavigation(resolver, router) async {
    final securStorage = locator<SecureStorageService>();

    if (await securStorage.isUserUnauthenticated()) {
      router.push(const UnknownViewRoute());
      return;
    }

    resolver.next(true);
  }
}
