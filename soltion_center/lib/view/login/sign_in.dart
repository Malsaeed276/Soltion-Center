import 'dart:html';
import 'package:soltion_center/units/theme.dart';
import 'package:flutter/material.dart';
import 'package:soltion_center/units/logo.dart';

class SignIn extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
              Container(
                child: CustomPaint(
                  size: Size(200, (200 * 1).toDouble()),
                  painter: AppLogo(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child:
                Text("Log in", style: TextStyle(fontSize: 30),)
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextFormField(decoration: InputDecoration(labelText: 'e-mail', hintText: 'e-mailinizi giriniz'),
                controller: emailController,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'şifre', hintText: 'şifrenizi giriniz'),
                  controller: passwordController),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: lightColorScheme.surfaceTint ,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
                onPressed:()  {
                         
                        },
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: lightColorScheme.onPrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
            ),]
              )
      ,
        );
}
}