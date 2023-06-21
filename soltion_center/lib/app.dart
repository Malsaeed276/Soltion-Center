import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/localization_controller.dart';
import 'over_screens/over_screens.dart';
import 'units/theme.dart';
import 'utils/images/logo.dart';
import 'view/login/intro.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  Provider.of<LocalizationController>(context, listen: false).getLanguage().appTitle!,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        brightness: Brightness.dark,
      ),
        initialRoute: '/intro',

      routes: {
        '/intro': (context) => const ApplyForEachPage(
          child: IntroPage(),
        ),
      },

    );
  }
}
