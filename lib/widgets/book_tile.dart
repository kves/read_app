import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:read_app/widgets/delete_book_dialog.dart';

class BookTile extends StatefulWidget {
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
  State<BookTile> createState() => _BookTileState();
}

class _BookTileState extends State<BookTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // show delete book dialog on long press on whole tile.
      onLongPress: showDeleteBookDialog,
      child: Column(
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
                              widget.bookTitle,
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
                                    widget.bookAuthor ?? '',
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
                                  widget.bookPages ?? '',
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
                                      widget.bookRating ?? '',
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                // book added date.
                                Text(
                                  widget.bookAddedDate.substring(
                                      0, widget.bookAddedDate.length - 16),
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
      ),
    );
  }

  void showDeleteBookDialog() {
    showDialog(
      context: context,
      builder: (context) => const DeleteBookDialog(),
    );
  }
}
