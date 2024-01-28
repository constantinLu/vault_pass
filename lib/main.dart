import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';

import 'package:vault_pass/presentation/view/main_view.dart';

///TODO:
///
/// https://blog.devgenius.io/send-emails-without-backend-in-flutter-48d0c506ab4c - FOR EMAIL

Future main() async {
  //might need to create a new class for these configs like: AppConfiguration
  WidgetsFlutterBinding.ensureInitialized();
  systemOrientation();

  /// THIS IS REALLY IMPORTANT FOR SETTING UP THE ROUTING AND DEPENDENCY INJECTION
  await setupLocator();
  await ThemeManager.initialise();

  //DbTestData().insertTestData();

  //TODO: MAKE SURE runapp is called.!!! IMPORTANT
  runApp(MainView());
}

Future<void> systemOrientation() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
