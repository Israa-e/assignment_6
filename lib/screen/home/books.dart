import 'dart:convert';

import 'package:assigment_1/data/book_model.dart';
import 'package:assigment_1/widget/harry_books.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  List<Book> books = [];
  @override
  void initState() {
    fetchData().then((value) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1D1F24),
        title: Text(
          "Books",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body:
          books.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemBuilder: (context, index) {
                  return HarryBooksWidget(book: books[index]);
                },
                itemCount: books.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              ),
    );
  }

  fetchData() async {
    var response = await get(
      Uri.parse("https://potterapi-fedeperin.vercel.app/en/books"),
    );
    books = bookFromJson(response.body);
    setState(() {});
  }
}
