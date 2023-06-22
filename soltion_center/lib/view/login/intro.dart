import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soltion_center/units/logo.dart';

import '../../controllers/localization_controller.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lang =
        Provider.of<LocalizationController>(context, listen: true)
            .getLanguage();
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomPaint(
                size: Size(200, (200 * 1).toDouble()),
                painter: AppLogo(),
              ),
              Text(
                lang.appTitle!,
                style: theme.textTheme.headlineMedium,
              ),
              Text(
                lang.appDescription!,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/SignUp');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      theme.colorScheme.primary,
                    ),
                    //overlayColor: MaterialStateProperty.all(themeColor.primary),
                  ),
                  child: Text(
                    lang.accept!,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
