class BookModel {
  final String bookTitle;
  final String? bookAuthor;
  final String? bookPages;
  final String? bookRating;
  final String? bookAddedDate;
  final String? bookCoverFromApi;

  BookModel({
    required this.bookTitle,
    this.bookAuthor,
    this.bookPages,
    this.bookRating,
    this.bookAddedDate,
    this.bookCoverFromApi,
  });
}

void addBook() {}
