import 'package:flutter/material.dart';

class ProfileModel {
  String name;
  Icon icon;
  String route;
  Function? onPressed;

  ProfileModel({required this.name, required this.icon, required this.route, this.onPressed});
}