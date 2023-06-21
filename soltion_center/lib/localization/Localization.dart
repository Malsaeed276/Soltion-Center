import 'package:soltion_center/controllers/localization_controller.dart';

abstract class Localization {
  late LangDirection langDirection;
  // App name
  late String? appTitle;
  late String? appDescription;

  // App Language Titles
  late Map<String, String>? languageTitles;


  //Auth
  late String? login;
  late String? register;
  late String? logOut;
  late String? email;
  late String? userName;
  late String? password;
  late String? registerText;
  late String? loginText;
  late String? userNotFound;
}