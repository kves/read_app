import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:read_app/data/book_data.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BookData>(
      builder: (context, value, child) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(AppLocalizations.of(context).helloWorld),
                Text(
                  'Books in your library: ${value.booksList.length}',
                  style: const TextStyle(fontSize: 24),
                ),
                Text(
                  'Average rating: ${value.getAvgRating().toStringAsFixed(1)}',
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 40),
                const Icon(
                  Icons.local_fire_department_outlined,
                  size: 160,
                  color: Colors.orange,
                ),
                Text(
                  "Wow! You've read ${value.getPagesSum().toString()} pages!",
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                Text(
                    'That means you spend around ${value.getMinutesReadingSum().toString()} minutes reading!'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
