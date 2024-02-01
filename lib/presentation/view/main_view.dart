import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:vault_pass/common/pub.dev/sizeup/sizeup.dart';
import 'package:vault_pass/infrastructure/setup/app.router.dart';
import 'package:vault_pass/infrastructure/setup/theme_setup.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizeup(
      builder: (BuildContext context, Orientation orientation, deviceType) {
        return ThemeBuilder(
          themes: getThemes(),
          darkTheme: primaryTheme,
          lightTheme: primaryTheme,
          defaultThemeMode: ThemeMode.dark,
          builder: (context, defaultTheme, darkTheme, themeMode) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Vault Pass',
            theme: darkTheme,
            darkTheme: darkTheme,
            themeMode: themeMode,
            routerDelegate: stackedRouter.delegate(),
            routeInformationParser: stackedRouter.defaultRouteParser(),
          ),
        );
      },
    );
  }
}
