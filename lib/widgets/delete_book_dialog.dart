import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:read_app/widgets/book_tile.dart';

import '../data/book_data.dart';

class DeleteBookDialog extends StatefulWidget {
  const DeleteBookDialog({ super.key});

  @override
  State<DeleteBookDialog> createState() => _DeleteBookDialogState();
}

class _DeleteBookDialogState extends State<DeleteBookDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(40),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.brown[200]),
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context).areYouSureYouWantToDeleteThisBook,
                style: const TextStyle(fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(AppLocalizations.of(context).delete),
                  ),
                  TextButton(
                    onPressed: cancel,
                    child: Text(AppLocalizations.of(context).cancel),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // delete book from library
  void delete(String bookTitle) {
    Provider.of<BookData>(context, listen: false).deleteBook(bookTitle);

    // pop dialog.
    Navigator.pop(context);
  }

  // cancel adding book, pop dialog.
  void cancel() {
    Navigator.pop(context);
  }
}
