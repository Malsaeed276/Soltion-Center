import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soltion_center/view/login/sign_in.dart';
import 'package:soltion_center/view/login/sign_up.dart';
import 'package:soltion_center/view/profile/profile.dart';

import 'controllers/connection_controller.dart';
import 'controllers/localization_controller.dart';
import 'view/over_screens/apply_for_each_page.dart';
import 'units/theme.dart';
import 'view/login/intro.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final connection = context.read<ConnectionController>();
    connection.getConnectivity.onConnectivityChanged
        .listen(connection.checkConnectivityState);
    return MaterialApp(
      title:  Provider.of<LocalizationController>(context, listen: false).getLanguage().appTitle!,
      debugShowCheckedModeBanner: false,
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
        '/SignIn': (context) =>  ApplyForEachPage(
          child: SignIn(),
        ),
        '/SignUp': (context) => const ApplyForEachPage(
          child: SignUp(),
        ),
        '/Profile': (context) => const ApplyForEachPage(
          child: Profile(),
        ),
      },

    );
  }
}
