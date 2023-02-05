class Book {
  final String bookTitle;
  final String? bookAuthor;
  final String? bookPages;
  final String? bookRating;
  final String bookAddedDate;
  final String? bookCoverFromApi;

  Book({
    required this.bookTitle,
    this.bookAuthor,
    this.bookPages,
    this.bookRating,
    required this.bookAddedDate,
    this.bookCoverFromApi,
  });
}

void addBook() {}
