import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'lib/assets/images/reading_man.png',
            ),
            SingleChildScrollView(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  children: [
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                    BookTileWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookTileWidget extends StatelessWidget {
  const BookTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Great Book'),
            Text('John Doe'),
            Text('Pages: 245'),
          ],
        ),
      ),
    );
  }
}
