import 'package:flutter/material.dart';

class AddBookDialog extends StatefulWidget {
  const AddBookDialog({super.key});

  @override
  State<AddBookDialog> createState() => _AddBookDialogState();
}

class _AddBookDialogState extends State<AddBookDialog> {
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
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Book title'),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Book author',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Pages',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
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
                ))
          ],
        ));
  }
}

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.star,
          ),
          Icon(
            Icons.star,
          ),
          Icon(
            Icons.star,
          ),
          Icon(
            Icons.star,
            size: 36,
          ),
          Icon(
            Icons.star,
            size: 36,
          ),
          Icon(
            Icons.star,
            size: 36,
          ),
          Icon(
            Icons.star,
            size: 36,
          ),
          Icon(
            Icons.star,
            size: 36,
          ),
          Icon(
            Icons.star,
            size: 36,
          ),
        ],
      ),
    );
  }
}
