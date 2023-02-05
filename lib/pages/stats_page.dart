import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:read_app/data/book_data.dart';

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
                const Icon(
                  Icons.local_fire_department_outlined,
                  size: 160,
                  color: Colors.orange,
                ),
                Text(
                  "Wow! You've read ${value.getPagesSum().toString()} pages!",
                  style: const TextStyle(fontSize: 24),
                ),
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
