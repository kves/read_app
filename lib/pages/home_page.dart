import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:read_app/data/book_data.dart';
import 'package:read_app/widgets/book_tile.dart';

import '../widgets/add_book_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BookData>(
      builder: (context, value, child) => Scaffold(
        body: value.isbookListEmpty
            ? SafeArea(
                child: Text('ADD BOOK BELOW'),
              )
            : SafeArea(
                child: ListView.builder(
                  itemCount: value.getBooksList().length,
                  itemBuilder: (context, index) => BookTile(
                    bookTitle: value.getBooksList()[index].bookTitle,
                    bookAuthor: value.getBooksList()[index].bookAuthor,
                    bookPages: value.getBooksList()[index].bookPages,
                    bookRating: value.getBooksList()[index].bookRating,
                    bookAddedDate: value.getBooksList()[index].bookAddedDate,
                  ),
                ),
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: showAddBookDialog,
          backgroundColor: Colors.brown,
          child: const Icon(
            Icons.menu_book_rounded,
            size: 32,
          ),
        ),
      ),
    );
  }

  void showAddBookDialog() {
    showDialog(
      context: context,
      builder: (context) => const AddBookDialog(),
    );
  }
}
