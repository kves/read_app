import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final String bookTitle;
  final String? bookAuthor;
  final String? bookPages;
  final String? bookRating;
  const BookTile(
      {super.key,
      required this.bookTitle,
      this.bookAuthor,
      this.bookPages,
      this.bookRating});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Material(
            color: Colors.brown[200],
            borderRadius: BorderRadius.circular(12),
            elevation: 20,
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // placeholder for in future api provided books covers.
                  const SizedBox(
                    width: 80,
                    height: 100,
                    child: Placeholder(),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // book title.
                          Text(
                            bookTitle,
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                          ),

                          // book author.
                          Row(
                            children: [
                              const Text(
                                'Author:',
                                style: TextStyle(fontSize: 16),
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  bookAuthor ?? '',
                                  style: const TextStyle(fontSize: 16),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 4),

                          // book pages.
                          Row(
                            children: [
                              const Text(
                                'Pages:',
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                bookPages ?? '',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Text(bookRating ?? ''),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
