import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:read_app/data/book_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BookData>(
      builder: (context, value, child) => Scaffold(
        body: value.isbookListEmpty
            ? SafeArea(
                child: Column(
                  children: [
                    const SizedBox(height: 180),
                    Text(
                      AppLocalizations.of(context).nothingToCalculate,
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      AppLocalizations.of(context).provideSomeDatabyAddingBook,
                      style: const TextStyle(fontSize: 14),
                    ),
                    Image.asset('lib/assets/images/no_stats.png'),
                  ],
                ),
              )
            : SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.local_fire_department_outlined,
                        size: 160,
                        color: Colors.orange,
                      ),
                      Text(
                        "${AppLocalizations.of(context).wowYouveRead} ${value.getPagesSum().toString()} ${AppLocalizations.of(context).pages}!",
                        style: const TextStyle(fontSize: 24),
                      ),
                      const SizedBox(height: 10),
                      Text(
                          '${AppLocalizations.of(context).thatMeansYouSpendAround} ${value.getMinutesReadingSum().toString()} ${AppLocalizations.of(context).minutesReading}!'),
                      const SizedBox(height: 40),
                      Text(
                        '${AppLocalizations.of(context).booksInYourLibrary}: ${value.booksList.length}',
                        style: const TextStyle(fontSize: 24),
                      ),
                      Text(
                        '${AppLocalizations.of(context).averageRating}: ${value.getAvgRating().toStringAsFixed(1)}',
                        style: const TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
