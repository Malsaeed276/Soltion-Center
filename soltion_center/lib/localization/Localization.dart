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

  //buttons
  late String? accept;
  late String? theme;
  late String? system;
  late String? light;
  late String? dark;
  late String? done;

  //lang
  late String? language;
  late String? languageCode;


  // App Language Dialog

  late String? languageDialogDescription;
  late String? languageDialogDoneButtonText;

  // Internet Dialog
  late String? largeWebViewError;
  late String? noInternetWarningDialogText;

  // App Messages
  late String? loginMessage;
  late String? registerMessage;
  late String? alreadyExistMessage;
  late String? wrongPasswordMessage;
  late String? signOutMessage;
  late String? signOutErrorMessage;

  // Logout Dialog
  late String? logoutDialogDescriptionText;
  late String? logoutDialogCancelButtonText;
  late String? logoutDialogLogoutButtonText;
}