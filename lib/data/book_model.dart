import 'dart:convert';

List<Book> bookFromJson(String str) =>
    List<Book>.from(json.decode(str).map((x) => Book.fromJson(x)));

String bookToJson(List<Book> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Book {
  int number;
  String title;
  String originalTitle;
  String releaseDate;
  String description;
  int pages;
  String cover;
  int index;

  Book({
    required this.number,
    required this.title,
    required this.originalTitle,
    required this.releaseDate,
    required this.description,
    required this.pages,
    required this.cover,
    required this.index,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
    number: json["number"],
    title: json["title"],
    originalTitle: json["originalTitle"],
    releaseDate: json["releaseDate"],
    description: json["description"],
    pages: json["pages"],
    cover: json["cover"],
    index: json["index"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "title": title,
    "originalTitle": originalTitle,
    "releaseDate": releaseDate,
    "description": description,
    "pages": pages,
    "cover": cover,
    "index": index,
  };
}
