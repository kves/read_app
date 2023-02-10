import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:read_app/data/language_data.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                Provider.of<LanguageData>(context, listen: false)
                    .changeLocale('en');
              },
              child: Text('English'),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<LanguageData>(context, listen: false)
                    .changeLocale('pl');
              },
              child: Text('Polish'),
            ),
          ],
        ),
      ),
    );
  }
}
