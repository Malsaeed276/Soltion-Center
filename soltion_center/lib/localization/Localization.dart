// ignore: file_names
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
  late String? profile;
  late String? alreadyHaveAnAccount;

  //Validation messages
  late String? onlyLettersAndNoSpaces;
  late String? validSchoolEmail;
  late String? passwordRules;

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
  late String? createNewAccount;

  // Logout Dialog
  late String? logoutDialogDescriptionText;
  late String? logoutDialogCancelButtonText;
  late String? logoutDialogLogoutButtonText;


  //Auth
  late String? nameSurname;
  late String? enterYourPassword;
  late String? enterYourEmail;
  late String? enterYourNameAndSurname;

  late String? profileInfo;
  late String? history;
  late String? categories;
  late String? yourCategories;
  late String? category;
  late String? addCategory;
  late String? searchForCategory;
  late String? searchForCategoryDes;

  //Homepage
  late String? homeTitle;
  late String? welcomeMessage;
  late String? writeIssue;
  late String? search;

  late String? homePageTitle;
  late String? homePageSubTitle;

  late String? loading;
  late String? error;
  late String? noDataRecorded;

  late String? question;
  late String? questions;
  late String? addNewQuestion;
  late String? addCategoryToQuestion;
  late String? addDetailsToQuestion;
  late String? addSolutionToQuestion;
  late String? questionHistory;

}
