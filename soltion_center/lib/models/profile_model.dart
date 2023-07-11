import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soltion_center/controllers/localization_controller.dart';

class ProfileModel {
  String? name;
  IconData? icon;
  String? route;
  Function? onPressed;

  ProfileModel({ this.name,  this.icon,  this.route, this.onPressed});


  
  List<ProfileModel> getProfileList(BuildContext context){
    final lang = Provider.of<LocalizationController>(context, listen: true)
        .getLanguage();

    return [
      ProfileModel(name: lang.profileInfo!, icon: Icons.person_outline, route: '/Profile/Info'),
      ProfileModel(name: lang.history!, icon: Icons.history_outlined, route: '/Profile/History'),
      ProfileModel(name: lang.categories!, icon: Icons.list, route: '/Profile/Categories',onPressed: (){
        Navigator.pushNamed(context, '/Profile/Category');
      }),
      ProfileModel(name: lang.language!, icon: Icons.translate_outlined, route: '/Profile/Language',onPressed: (){
        Provider.of<LocalizationController>(context, listen: false).getLanguageDialog(context);
      }),
    ];
  }
}