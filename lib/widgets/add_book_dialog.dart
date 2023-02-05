import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:read_app/data/book_data.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddBookDialog extends StatefulWidget {
  final String? bookRating;
  const AddBookDialog({
    super.key,
    this.bookRating,
  });

  @override
  State<AddBookDialog> createState() => _AddBookDialogState();
}

class _AddBookDialogState extends State<AddBookDialog> {
  // book title controller.
  final bookTitleController = TextEditingController();

  // book author controller.
  final bookAuthorController = TextEditingController();

  // number of pages controller.
  final bookPagesController = TextEditingController();

  // rating controller
  final bookRatingController = TextEditingController();

  // FocusNode when user doesn't fill bookTitle textfield and will tap save button.
  late FocusNode bookTitleFocusNode;
  @override
  void initState() {
    super.initState();

    bookTitleFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    bookTitleFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(40),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.brown[200]),
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // book title.
                  TextField(
                    focusNode: bookTitleFocusNode,
                    controller: bookTitleController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Book title'),
                  ),
                  const SizedBox(height: 10),
                  // book author.
                  TextField(
                    controller: bookAuthorController,
                    decoration: const InputDecoration(
                      hintText: 'Book author',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // number of pages.
                  TextField(
                    controller: bookPagesController,
                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    decoration: const InputDecoration(
                      hintText: 'Pages',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 10),
                  // rating.
                  RatingBar.builder(
                    itemCount: 10,
                    itemSize: 30,
                    glow: false,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      size: 5,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) => addRating(rating.toString()),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: save,
                        child: const Text('save'),
                      ),
                      TextButton(
                        onPressed: cancel,
                        child: const Text('cancel'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -60,
            child: Image.asset(
              "lib/assets/images/book.png",
              scale: 8,
            ),
          ),
        ],
      ),
    );
  }

  void addRating(String rating) {
    bookRatingController.text = rating;
  }

  // save book method.
  void save() {
    // focus user on bookTitle text field when bookTitle isn't filled.
    if (bookTitleController.text.isEmpty) {
      bookTitleFocusNode.requestFocus();
    } else {
      // add book to bookData list.
      Provider.of<BookData>(context, listen: false).addBook(
        bookTitleController.text,
        bookAuthorController.text,
        bookPagesController.text,
        bookRatingController.text,
      );
      // pop dialog.
      Navigator.pop(context);
    }
  }

  // cancel adding book, pop dialog.
  void cancel() {
    Navigator.pop(context);
  }
}
