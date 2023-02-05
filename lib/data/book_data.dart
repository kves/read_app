import 'package:flutter/material.dart';
import 'package:read_app/models/book_model.dart';

class BookData extends ChangeNotifier {
  // list containing all added books.
  List<Book> booksList = [];

  // get the list of books.
  List<Book> getBooksList() {
    return booksList;
  }

  bool isbookListEmpty = true;

  // add new book.
  void addBook(String bookTitle, String? bookAuthor, String? bookPages,
      String? bookRating, String bookAddedDate) {
    booksList.add(
      Book(
        bookTitle: bookTitle,
        bookAuthor: bookAuthor,
        bookPages: bookPages,
        bookRating: bookRating,
        bookAddedDate: bookAddedDate,
      ),
    );
    isbookListEmpty = false;
    notifyListeners();
  }
}