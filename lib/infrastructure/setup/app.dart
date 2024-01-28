import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:vault_pass/infrastructure/database/vaultdb.dart';
import 'package:vault_pass/infrastructure/repository/record_repository.dart';
import 'package:vault_pass/infrastructure/repository/user_repository.dart';
import 'package:vault_pass/presentation/view/auth/login_view.dart';
import 'package:vault_pass/presentation/view/home/home_view.dart';
import 'package:vault_pass/presentation/view/notification_view.dart';
import 'package:vault_pass/presentation/view/settings/about_us_settings_view.dart';
import 'package:vault_pass/presentation/view/settings/account_settings_view.dart';
import 'package:vault_pass/presentation/view/settings/app_settings_view.dart';
import 'package:vault_pass/presentation/view/settings/donation_view.dart';
import 'package:vault_pass/presentation/view/settings/help_settings_view.dart';
import 'package:vault_pass/presentation/view/settings/security_settings_view.dart';

@StackedApp(
    routes: [
      MaterialRoute(page: HomeView, initial: true),
      MaterialRoute(page: LoginView),

      /// settings
      MaterialRoute(page: DonationView),
      MaterialRoute(page: HelpSettingsView),
      MaterialRoute(page: AccountSettingsView),
      MaterialRoute(page: SecuritySettingsView),
      MaterialRoute(page: AppSettingsView),
      MaterialRoute(page: AboutUsSettingsView),

      /// fab
      //MaterialRoute(page: FavoriteView),
      MaterialRoute(page: NotificationView),
    ],
    /// SETUP OF ALL DEPENDENCIES
    dependencies: [
      //LazySingleton(classType: RouterService),
      LazySingleton(classType: NavigationService),
      LazySingleton(classType: DialogService),
      LazySingleton(classType: BottomSheetService),
      //local
      LazySingleton(classType: VaultPassDb),
      LazySingleton(classType: FlutterSecureStorage),

      LazySingleton(classType: ThemeService, resolveUsing: ThemeService.getInstance),

      //services

      //repos
      LazySingleton(classType: RecordRepository),
      LazySingleton(classType: UserRepository),
    ])
class Router {}
