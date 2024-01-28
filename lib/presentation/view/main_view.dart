import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:vault_pass/common/package/sizeup.dart';
import 'package:vault_pass/infrastructure/setup/app.router.dart';
import 'package:vault_pass/infrastructure/setup/theme_setup.dart';

import '../../infrastructure/setup/app.locator.dart';

class MainView extends StatelessWidget {
  static const String title = 'Vault Pass';

  MainView({super.key});

  final _themeService = locator<ThemeService>();

  @override
  Widget build(BuildContext context) {
    return Sizeup(
      builder: (BuildContext context, Orientation orientation, deviceType) {
        return ThemeBuilder(
          themes: getThemes(),
          darkTheme: primaryTheme,
          lightTheme: primaryTheme,
          defaultThemeMode: ThemeMode.dark,
          builder: (context, defaultTheme, darkTheme, themeMode) => MaterialApp(
            initialRoute: Routes.homeView,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorKey: StackedService.navigatorKey,
            debugShowCheckedModeBanner: false,
            title: 'Vault Pass',
            theme: darkTheme,
            darkTheme: darkTheme,
            themeMode: themeMode,
            navigatorObservers: [
              StackedService.routeObserver,
            ],
          ),
        );
      },
    );
  }
}
