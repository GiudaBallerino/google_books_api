import 'dart:convert';

import 'enums/enums.dart';
import 'models/models.dart' show Book;
import 'package:http/http.dart' as http;

class GoogleBooksApi {
  const GoogleBooksApi();

  Future<List<Book>> searchBooks(
    String query, {
    QueryType? queryType,
    String? langRestrict,
    int maxResults = 30,
    OrderBy? orderBy,
    PrintType? printType = PrintType.all,
    int startIndex = 0,
  }) async {
    var queryUrl = "https://www.googleapis.com/books/v1/volumes?q="
        "${queryType != null ? queryType.name + ':' + query.trim().replaceAll(' ', '+') : query.trim().replaceAll(' ', '+')}"
        "&maxResults=$maxResults"
        "&startIndex=$startIndex"
        "${langRestrict != null ? '&langRestrict=$langRestrict' : ''}"
        "${orderBy != null ? '&orderBy=${orderBy.name}' : ''}"
        "${printType != null ? '&printType=${printType.name}' : ''}";

    final List<Book> books = [];

    await http.get(Uri.parse(queryUrl)).then((result) {
      if (result.statusCode == 200) {
        ((jsonDecode(result.body))['items'] as List<dynamic>?)?.forEach((item) {
          books.add(Book.fromJson(item));
        });
      } else {
        throw SearchFailedException;
      }
    });

    return books;
  }

  Future<Book> getBookById(String id) async {
    final query = 'https://www.googleapis.com/books/v1/volumes/${id.trim()}';

    late Book book;
    await http.get(Uri.parse(query)).then((result) {
      if (result.statusCode == 200) {
        book = Book.fromJson(jsonDecode(result.body));
      } else {
        throw BookNotFoundException;
      }
    });

    return book;
  }

  // isbn will return a single book in items
  Future<Book> getBookByIsbn(String isbn) async {
    final query =
        'https://www.googleapis.com/books/v1/volumes/?q=isbn:${isbn.trim()}';

    late Book book;
    await http.get(Uri.parse(query)).then((result) {
      if (result.statusCode == 200) {
        var item =
            ((jsonDecode(result.body))['items'] as List<dynamic>?)?.first;
        book = Book.fromJson(item);
      } else {
        throw BookNotFoundException;
      }
    });

    return book;
  }
}

class BookNotFoundException implements Exception {}

class SearchFailedException implements Exception {}
