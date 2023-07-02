import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soltion_center/units/logo.dart';
import '../../controllers/localization_controller.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final lang = Provider.of<LocalizationController>(context, listen: true)
        .getLanguage();
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
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
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CustomPaint(
                size: Size(175, (175 * 1).toDouble()),
                painter: AppLogo(),
              ),
              Text(
                lang.appTitle!,
                style: const TextStyle(fontSize: 30),
              ),
             Container(
               decoration: BoxDecoration(
                 color: theme.colorScheme.surfaceVariant,
                 borderRadius: const BorderRadius.only(
                   topRight: Radius.circular(35),
                   topLeft: Radius.circular(35),
                 )
               ),
               child: Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Column(
                   children: [
                     Text(
                       lang.register!,
                       style: const TextStyle(fontSize: 30),
                     ),
                     TextFormField(
                       decoration: InputDecoration(labelText: lang.nameSurname),
                       validator: (value) {
                         String pattern = r'^[a-zA-Z]*$';
                         RegExp regex = RegExp(pattern);
                         if (value!.isEmpty) {
                           return lang.enterYourNameAndSurname;
                         } else if (!regex.hasMatch(value)) {
                           return lang.onlyLettersAndNoSpaces;
                         }
                         return null;
                       },
                     ),
                     TextFormField(
                       decoration: InputDecoration(labelText: lang.email,
                     ),
                       validator: (value) {
                         String pattern =
                             r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.edu(\.[a-zA-Z]{2,})?$';
                         RegExp regex = RegExp(pattern);
                         if (!regex.hasMatch(value!)) {
                           return lang.validSchoolEmail;
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
                           return lang.passwordRules;
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
                         fillColor: theme.colorScheme.primary,
                         padding: const EdgeInsets.symmetric(vertical: 15.0),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30.0)),
                         onPressed: () {
                           if (formKey.currentState!.validate()) {}
                         },
                         child: Text(
                           lang.accept!,
                           style: theme.textTheme.bodyText1?.copyWith(
                             color: theme.colorScheme.onPrimary,
                           ),
                         ),
                       ),
                     ),
                     TextButton(
                       onPressed: () {
                         Navigator.pushReplacementNamed(context, '/SignIn');
                       },
                       child: Text(
                         lang.alreadyHaveAnAccount!,
                       ),
                     ),
                   ],
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
