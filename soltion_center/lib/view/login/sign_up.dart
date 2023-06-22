import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solution_center/units/logo.dart';
import '../../controllers/localization_controller.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final lang = Provider.of<LocalizationController>(context, listen: true).getLanguage();
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<LocalizationController>(context, listen: false).getLanguageDialog(context);
            },
            icon: Icon(
              Icons.language_outlined,
              color: theme.primaryColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              CustomPaint(
                size: Size(200, (200 * 1).toDouble()),
                painter: AppLogo(),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'İsim Soyisim'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Lütfen isim soyisim girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-posta'),
                validator: (value) {
                  Pattern pattern =
                      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(edu)$';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(value))
                    return 'Lütfen geçerli bir okul e-postası girin';
                  else
                    return null;
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Parola'),
                validator: (value) {
                  Pattern pattern =
                      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(value))
                    return 'Şifre en az 8 karakter, 1 sayı, 1 küçük ve 1 büyük harf içermeli';
                  else
                    return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text('İşlem yapılıyor')));
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


