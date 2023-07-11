import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soltion_center/controllers/localization_controller.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final lang = Provider.of<LocalizationController>(context, listen: true)
        .getLanguage();
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(lang.category!),
      ),
      body: const Placeholder(),
    );
  }
}
