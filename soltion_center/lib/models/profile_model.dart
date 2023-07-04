import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soltion_center/controllers/localization_controller.dart';

class ProfileModel {
  String name;
  IconData icon;
  String route;
  Function? onPressed;

  ProfileModel({required this.name, required this.icon, required this.route, this.onPressed});
  
  
  List<ProfileModel> getProfileList(BuildContext context){
    final lang = Provider.of<LocalizationController>(context, listen: true)
        .getLanguage();

    return [
      ProfileModel(name: lang.profileInfo!, icon: Icons.person_outline, route: '/Profile/Info'),
      ProfileModel(name: lang.history!, icon: Icons.person_outline, route: '/Profile/History'),
      ProfileModel(name: lang.categories!, icon: Icons.person_outline, route: '/Profile/Categories'),
      ProfileModel(name: lang.language!, icon: Icons.person_outline, route: '/Profile/Language'),
      ProfileModel(name: lang.theme!, icon: Icons.person_outline, route: '/Profile/Theme'),
    ];
  }
}