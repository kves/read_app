import 'package:flutter/material.dart';
import 'package:read_app/pages/home_page.dart';
import 'package:read_app/pages/settings_page.dart';
import 'package:read_app/pages/stats_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List navPages = [
    const HomePage(),
    const StatsPage(),
    const SettingsPage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navPages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home), label: AppLocalizations.of(context).home),
          BottomNavigationBarItem(icon: const Icon(Icons.insights), label: AppLocalizations.of(context).stats),
          BottomNavigationBarItem(
              icon: const Icon(Icons.settings), label: AppLocalizations.of(context).settings),
        ],
      ),
    );
  }
}
