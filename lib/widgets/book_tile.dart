import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BookTile extends StatelessWidget {
  final String bookTitle;
  final String? bookAuthor;
  final String? bookPages;
  final String? bookRating;
  final String bookAddedDate;
  const BookTile({
    super.key,
    required this.bookTitle,
    this.bookAuthor,
    this.bookPages,
    this.bookRating,
    required this.bookAddedDate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Material(
            color: Colors.brown[200]?.withOpacity(0.7),
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
                              fontSize: 26,
                            ),
                          ),

                          // book author.
                          Row(
                            children: [
                              Text(
                                AppLocalizations.of(context).author,
                                style: const TextStyle(fontSize: 18),
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  bookAuthor ?? '',
                                  style: const TextStyle(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 4),

                          // book pages.
                          Row(
                            children: [
                              Text(
                                AppLocalizations.of(context).pagesCapitalized,
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                bookPages ?? '',
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),

                          const SizedBox(height: 6),

                          // book rating
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    AppLocalizations.of(context).rating,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    bookRating ?? '',
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                bookAddedDate.substring(
                                    0, bookAddedDate.length - 16),
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
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
