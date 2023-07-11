import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soltion_center/controllers/localization_controller.dart';

part 'home_page_header.dart';
part 'home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final lang = Provider.of<LocalizationController>(context, listen: true)
        .getLanguage();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          lang.homeTitle!,
          style:theme.textTheme.headlineSmall,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/Profile');
            },
          ),
        ],
      ),
      body: const Column(
        children: [
          Flexible(
            flex: 3,
              child: HomePageHeader()),
          Flexible(
              flex: 4,
              child: HomePageBody()),
        ],
      ),
    );
  }
}
