import 'package:provider/provider.dart';
import 'package:soltion_center/controllers/localization_controller.dart';
import 'package:flutter/material.dart';
import 'package:soltion_center/units/logo.dart';


class SignIn extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = Provider.of<LocalizationController>(context, listen: true)
        .getLanguage();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<LocalizationController>(context, listen: false)
                  .getLanguageDialog(context);
            },
            icon: Icon(
              Icons.language_outlined,
              color: theme.colorScheme.primary,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomPaint(
                size: Size(200, (200 * 1).toDouble()),
                painter: AppLogo(),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text('Solution Center', style: TextStyle(fontSize: 30),),
              const SizedBox(
                height: 25,
              ),
              Text(lang.login!, style: const TextStyle(fontSize: 30),),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.mail),
                      labelText: lang.email,
                      hintText: lang.enterYourEmail),
                  controller: emailController),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password_rounded),
                    labelText: lang.password,
                    hintText: lang.enterYourPassword,
                  ),
                  controller: passwordController),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: RawMaterialButton(
                    fillColor: theme.colorScheme.surfaceTint,
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {

                    },
                    child: Text(
                      lang.login!,
                      style: TextStyle(
                          color: theme.colorScheme.onPrimary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
