import 'package:assigment_1/data/book_model.dart';
import 'package:flutter/material.dart';

class HarryBooksWidget extends StatelessWidget {
  final Book book;
  const HarryBooksWidget({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(book.title),
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(book.cover),
                    SizedBox(height: 10),
                    Text("Original Title: ${book.originalTitle}"),
                    SizedBox(height: 5),
                    Text("Release Date: ${book.releaseDate}"),
                    SizedBox(height: 5),
                    Text("Pages: ${book.pages}"),
                    SizedBox(height: 10),
                    Text("Description:"),
                    Text(book.description),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
      child: ListTile(
        leading: Container(
          height: 300,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.purple.shade50,

            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(5),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(book.cover),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Text(book.title),
        subtitle: Text(book.releaseDate),
      ),
    );
  }
}
