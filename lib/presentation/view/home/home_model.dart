import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';
import 'package:vault_pass/infrastructure/setup/app.router.dart';
import 'package:vault_pass/presentation/view/auth/login_view.dart';
import 'package:vault_pass/presentation/view/home/home_view.dart';
import 'package:vault_pass/presentation/view/notification_view.dart';
import 'package:vault_pass/presentation/view/settings/donation_view.dart';
import 'package:vault_pass/presentation/view/settings/help_settings_view.dart';

class HomeModel extends IndexTrackingViewModel {
  final themeService = locator<ThemeService>();

  //final routerService = locator<RouterService>();

// void navigateToIncome(int tabIndex) async {
//   await routerService.navigateTo(
//     HomeViewRoute(viewIndex: 1, tabIndex: tabIndex),
//   );
// }

  Widget routeTo(int index) {
    switch (index) {
      case 0:
        super.setIndex(index);
        return DonationView();
      case 1:
        return HelpSettingsView();
      // case 2:
      //   return ExpenseView();
      // case 3:
      //   return AnalyticsView();
      // case 4:
      //   return const BankView();
      // case 5:
      //   return const PayrollView();
      // case 6:
      //   return const TaxView();
      // case 7:
      // //case 8 is empty (hacky way)
      // case 8:
      //   return DocumentView();
      case 2:
        return NotificationView();
      default:
        return HomeView();
    }
  }

  Widget routeToView(String routeView) {
    switch (routeView) {
      case Routes.loginView:
        return LoginView();
      case Routes.notificationView:
        return NotificationView();
      // case 3:
      //   return AnalyticsView();
      // case 4:
      //   return const BankView();
      // case 5:
      //   return const PayrollView();
      // case 6:
      //   return const TaxView();
      // case 7:
      // //case 8 is empty (hacky way)
      // case 8:
      //   return DocumentView();
      default:
        return HomeView();
    }
  }

  void getAddress() {}
}
