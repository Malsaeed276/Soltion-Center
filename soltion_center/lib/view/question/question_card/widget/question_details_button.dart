

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soltion_center/models/question_model.dart';

class QuestionDetailsButton extends StatelessWidget {
  const QuestionDetailsButton({Key? key, required this.question})
      : super(key: key);
  final QuestionModel question;
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return ElevatedButton(
      style: TextButton.styleFrom(
        primary: themeData.colorScheme.onPrimary,
        onSurface: themeData.colorScheme.onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        backgroundColor: themeData.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      onPressed: () {
        //TODO Add navigation

      },
      child: Text(
        'Details',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
