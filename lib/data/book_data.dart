import 'package:flutter/material.dart';
import 'package:read_app/models/book_model.dart';

class BookData extends ChangeNotifier {
  // list containing all added books.
  List<Book> booksList = [];
  int bookPagesSum = 0;
  int minutesReadingSum = 0;

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

  // sum pages.
  void sumPages(String bookPages) {
    var x = int.parse(bookPages);
    bookPagesSum += x;
  }

  // sum minutes spent od reading.
  void sumMinutesReading(String bookPages) {
    minutesReadingSum = bookPagesSum * 2;
  }

  // get sum of pages.
  int getPagesSum() {
    return bookPagesSum;
  }

  // get sum of minutes spent od reading.
  int getMinutesReadingSum() {
    return minutesReadingSum;
  }
}
