import 'package:soltion_center/controllers/localization_controller.dart';

import 'Localization.dart';

class ENLocalization implements Localization {
  @override
  String? appDescription = 'Solution Center application is a mobile application designed as a solidarity and information sharing platform among university students by targeting them.  University life presents many opportunities and experiences for students, as well as a variety of challenges and problems. Thanks to this application, which aims to provide a connection point between students who want to make university life easier and help each other, students can find faster and more effective solutions to the problems encountered.';


  @override
  String? appTitle = 'Solution Center';

  @override
  String? email = 'Email';

  @override
  LangDirection langDirection = LangDirection.left;

  @override
  Map<String, String>? languageTitles = {
    'en': 'English',
    'tr': 'Turkish'
  };
  @override
  String? logOut = 'Log Out';

  @override
  String? login = 'Log In';

  @override
  String? loginText = 'Do you have an account';

  @override
  String? password = 'Password';

  @override
  String? register = 'Register';

  @override
  String? registerText;

  @override
  String? userName = 'User Name';

  @override
  String? userNotFound;

  @override
  String? alreadyHaveAnAccount = 'Already have an account?';
  
  @override
  String? onlyLettersAndNoSpaces = 'Please only use letters and no spaces';

  @override
  String? validSchoolEmail = 'Please enter a valid school email';

  @override
  String? passwordRules = 'Password must have at least 8 characters, 1 number, 1 uppercase and 1 lowercase letter';

  @override
  String? accept = 'Accept';

  @override
  String? dark = 'Dark';

  @override
  String? done = 'Done';

  @override
  String? language = 'Language';

  @override
  String? light = 'Light';

  @override
  String? system = 'System';

  @override
  String? theme ='Theme';

  @override
  String? languageCode = 'English';

  @override
  String? languageDialogDescription = 'Press the desired language button to change the app\'s language';

  @override
  String? languageDialogDoneButtonText = 'Done';

  @override
  String? noInternetWarningDialogText =
      'No internet connection detected at this time. The game needs an internet connection to constantly update your game data. Please reconnect to continue';

  @override
  String? largeWebViewError =
      "This device is not supported. Please play the game only on your mobile browser.";

  // App Messages
  @override
  String? alreadyExistMessage = 'The account already exists';

  @override
  String? loginMessage = 'You have successfully entered';

  @override
  String? registerMessage = 'registration successful';

  @override
  String? wrongPasswordMessage =
      'You have entered the wrong information, please check again';

  @override
  String? signOutMessage = 'Signed out successfully';

  @override
  String? signOutErrorMessage = 'Error in signing out';

  // Logout Dialog
  @override
  String? logoutDialogDescriptionText =
      'Are you sure that you want to log out?';

  @override
  String? logoutDialogCancelButtonText = 'Cancel';

  @override
  String? logoutDialogLogoutButtonText = 'Logout';

  @override
  String? profile = 'Profile';

  @override
  String? enterYourEmail = 'Enter Your Email';

  @override
  String? enterYourNameAndSurname = 'Enter Your Name & Surname';

  @override
  String? enterYourPassword = 'Enter Your Password';

  @override
  String? nameSurname = 'Name & Surname';

  @override
  String? createNewAccount = 'Create a new account?';
}
