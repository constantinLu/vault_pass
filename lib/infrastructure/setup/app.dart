import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:vault_pass/infrastructure/database/vaultdb.dart';
import 'package:vault_pass/infrastructure/repository/record_repository.dart';
import 'package:vault_pass/infrastructure/repository/user_repository.dart';
import 'package:vault_pass/infrastructure/service/auth_service.dart';
import 'package:vault_pass/infrastructure/service/biometrics_service.dart';
import 'package:vault_pass/infrastructure/service/user_service.dart';
import 'package:vault_pass/presentation/view/auth/login/login_view.dart';
import 'package:vault_pass/presentation/view/auth/register/register_view.dart';
import 'package:vault_pass/presentation/view/auth/splash/splash_view.dart';
import 'package:vault_pass/presentation/view/favorite_view.dart';
import 'package:vault_pass/presentation/view/home/home_view.dart';
import 'package:vault_pass/presentation/view/notification_view.dart';
import 'package:vault_pass/presentation/view/settings/about_us_settings_view.dart';
import 'package:vault_pass/presentation/view/settings/account_settings_view.dart';
import 'package:vault_pass/presentation/view/settings/app_settings_view.dart';
import 'package:vault_pass/presentation/view/settings/donation_view.dart';
import 'package:vault_pass/presentation/view/settings/help_settings_view.dart';
import 'package:vault_pass/presentation/view/settings/security_settings_view.dart';
import 'package:vault_pass/presentation/view/unknown/unknown_view.dart';

import '../../domain/auth/auth_facade.dart';
import '../service/secure_storage_service.dart';
import 'auth_guard.dart';

@StackedApp(
    routes: [
      CustomRoute(page: SplashView, initial: true),
      CustomRoute(page: RegisterView),
      CustomRoute(page: LoginView),
      CustomRoute(page: HomeView, guards: [AuthGuard]),

      /// settings
      CustomRoute(page: DonationView, guards: [AuthGuard]),
      CustomRoute(page: HelpSettingsView, guards: [AuthGuard]),
      CustomRoute(page: AccountSettingsView, guards: [AuthGuard]),
      CustomRoute(page: SecuritySettingsView, guards: [AuthGuard]),
      CustomRoute(page: AppSettingsView, guards: [AuthGuard]),
      CustomRoute(page: AboutUsSettingsView, guards: [AuthGuard]),

      /// fab
      CustomRoute(page: FavoriteView, guards: [AuthGuard]),
      CustomRoute(page: NotificationView, guards: [AuthGuard]),

      CustomRoute(page: UnknownView, path: '/404'),
    ],

    /// SETUP OF ALL DEPENDENCIES
    dependencies: [
      ///stacked
      LazySingleton(classType: RouterService),
      LazySingleton(classType: DialogService),
      LazySingleton(classType: BottomSheetService),
      LazySingleton(classType: ThemeService, resolveUsing: ThemeService.getInstance),
      //external
      LazySingleton(classType: FlutterSecureStorage),
      //local
      LazySingleton(classType: VaultPassDb),
      //services
      LazySingleton(classType: AuthService, asType: IAuthFacade),
      LazySingleton(classType: SecureStorageService),
      LazySingleton(classType: BiometricsService),
      LazySingleton(classType: UserService),
      //repos
      LazySingleton(classType: UserRepository),
      LazySingleton(classType: RecordRepository),
    ],
    logger: StackedLogger())
class Router {}
