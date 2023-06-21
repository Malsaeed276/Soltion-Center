import 'package:soltion_center/controllers/localization_controller.dart';

import 'Localization.dart';

class ENLocalization implements Localization {
  @override
  String? appDescription = 'Solution Center application is a mobile application designed as a solidarity and information sharing platform among university students by targeting them.  University life presents many opportunities and experiences for students, as well as a variety of challenges and problems. Thanks to this application, which aims to provide a connection point between students who want to make university life easier and help each other, students can find faster and more effective solutions to the problems encountered.';


  @override
  String? appTitle = 'Solution Center';

  @override
  String? email;

  @override
  LangDirection langDirection = LangDirection.left;

  @override
  Map<String, String>? languageTitles = {
    'en': 'English',
    'tr': 'Turkish'
  };
  @override
  String? logOut;

  @override
  String? login;

  @override
  String? loginText;

  @override
  String? password;

  @override
  String? register;

  @override
  String? registerText;

  @override
  String? userName;

  @override
  String? userNotFound;

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

}