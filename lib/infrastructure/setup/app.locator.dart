// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:stacked_services/src/bottom_sheet/bottom_sheet_service.dart';
import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/router_service.dart';
import 'package:stacked_shared/stacked_shared.dart';
import 'package:stacked_themes/src/theme_service.dart';

import '../../domain/auth/auth_facade.dart';
import '../database/vaultdb.dart';
import '../repository/record_repository.dart';
import '../repository/user_repository.dart';
import '../service/auth_service.dart';
import '../service/biometrics_service.dart';
import '../service/secure_storage_service.dart';
import '../service/user_service.dart';
import 'app.router.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
  StackedRouterWeb? stackedRouter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => RouterService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => ThemeService.getInstance());
  locator.registerLazySingleton(() => FlutterSecureStorage());
  locator.registerLazySingleton(() => VaultPassDb());
  locator.registerLazySingleton<IAuthFacade>(() => AuthService());
  locator.registerLazySingleton(() => SecureStorageService());
  locator.registerLazySingleton(() => BiometricsService());
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => UserRepository());
  locator.registerLazySingleton(() => RecordRepository());
  if (stackedRouter == null) {
    throw Exception(
        'Stacked is building to use the Router (Navigator 2.0) navigation but no stackedRouter is supplied. Pass the stackedRouter to the setupLocator function in main.dart');
  }

  locator<RouterService>().setRouter(stackedRouter);
}
