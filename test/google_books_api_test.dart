import 'package:google_books_api/google_books_api.dart';
import 'package:test/test.dart';

void main() {
  test('search books', () async {
    GoogleBooksApi googleBooksApi = GoogleBooksApi();
    final List<Book> books = await googleBooksApi.searchBooks(
      'a',
      maxResults: 20,
      printType: PrintType.books,
      orderBy: OrderBy.relevance,
    );
    expect(books.length, 20);
  });

  test('get book by id', () async {
    GoogleBooksApi googleBooksApi = GoogleBooksApi();
    final Book book = await googleBooksApi.getBookById('H0taAAAAYAAJ');
    expect(book.volumeInfo.title, 'A Study of Income and Expenditures in Sixty Colleges. Year 1953-54');
  });
}
