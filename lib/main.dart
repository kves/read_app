import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:read_app/data/book_data.dart';
import 'package:read_app/data/language_data.dart';
import 'package:read_app/pages/main_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BookData>(create: (context) => BookData()),
        ChangeNotifierProvider<LanguageData>(
            create: (context) => LanguageData()),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          locale:
              Provider.of<LanguageData>(context, listen: true).currentLocale,
          title: 'Read',
          theme: ThemeData(
            primarySwatch: Colors.brown,
            inputDecorationTheme: const InputDecorationTheme(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.2,
                  color: Colors.brown,
                ),
              ),
            ),
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const MainPage(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}
