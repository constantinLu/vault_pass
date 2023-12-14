import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:vault_pass/infrastructure/database/vaultdb.dart';
import 'package:vault_pass/presentation/view/home_view.dart';

@StackedApp(
    routes: [
      MaterialRoute(page: HomeView, initial: true)
    ],
    // SETUP OF ALL DEPENDENCIES
    dependencies: [
      LazySingleton(classType: NavigationService),
      LazySingleton(classType: DialogService),
      LazySingleton(classType: BottomSheetService),
      //local
      LazySingleton(classType: VaultPassDb),
      LazySingleton(classType: FlutterSecureStorage),
      LazySingleton(classType: ThemeService, resolveUsing: ThemeService.getInstance),
    ])
class Router {}
