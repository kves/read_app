
import 'package:flutter/material.dart';
import 'package:read_app/models/book_model.dart';

import '../widgets/add_book_dialog.dart';

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
        child: ListView(
          children: const [Text('sad')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAddBookDialog,
        backgroundColor: Colors.brown,
        child: Icon(
          Icons.menu_book_rounded,
          size: 32,
        ),
      ),
    );
  }

  void showAddBookDialog() {
    showDialog(
      context: context,
      builder: (context) => AddBookDialog(),
    );
  }
}
