import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soltion_center/units/logo.dart';
import '../../controllers/localization_controller.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final lang = Provider.of<LocalizationController>(context, listen: true).getLanguage();
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<LocalizationController>(context, listen: false).getLanguageDialog(context);
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
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              CustomPaint(
                size: Size(200, (200 * 1).toDouble()),
                painter: AppLogo(),
              ),
              Text(lang.register!, style: const TextStyle(fontSize: 30),),
              TextFormField(
                decoration: InputDecoration(labelText: lang.nameSurname),
                validator: (value) {
                  if (value!.isEmpty) {
                    return lang.enterYourNameAndSurname;
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: lang.email),
                validator: (value) {
                  String pattern =
                      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(edu)$';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(value!)) {
                    return 'Lütfen geçerli bir okul e-postası girin';
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: lang.password),
                validator: (value) {
                  String pattern =
                      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(value!)) {
                    return 'Şifre en az 8 karakter, 1 sayı, 1 küçük ve 1 büyük harf içermeli';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: RawMaterialButton(
                  fillColor: theme.colorScheme.surfaceTint ,
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('İşlem yapılıyor')));
                    }
                  },
                  child: Text(
                    lang.accept!,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


