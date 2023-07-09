import 'package:flutter/material.dart';
class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          lang.homeTitle,
          style: TextStyle(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              lang.welcomeMessage,
              style: theme.textTheme.headline4,
            ),
            SizedBox(height: 16),
            Text(
              lang.writeIssue,
              style: theme.textTheme.bodyText1,
            ),
            SizedBox(height: 24),
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceVariant,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search, color: theme.colorScheme.primary),
                  SizedBox(width: 8),
                  Text(
                    lang.search,
                    style: TextStyle(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
