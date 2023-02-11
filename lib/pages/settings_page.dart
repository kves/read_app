import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:read_app/data/language_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context).changeLanguage,
                style: const TextStyle(fontSize: 24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<LanguageData>(context, listen: false)
                          .changeLocale('en');
                    },
                    child: const Text('English'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<LanguageData>(context, listen: false)
                          .changeLocale('pl');
                    },
                    child: const Text('Polski'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
