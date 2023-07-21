
# google_books_api

A dart package to search books with the Google Books Api.


## Installing

Add google_books_api to your pubspec.yaml file:

```yaml
dependencies:
  google_books_api: ^1.0.0
```
Import google_books_api in files that it will be used:

```dart
import 'package:google_books_api/google_books_api.dart';
```    
## Usage/Examples

### Search books
To get a list of books corresponding to the query.
```dart
final List<Book> books = await GoogleBooksApi().searchBooks(
    'book',
    maxResults: 20,
    printType: PrintType.books,
    orderBy: OrderBy.relevance,
);
```
You can use this parameters to make the query more efficient.

<table>
    <tr>
        <td>Parameter</td>
        <td>Description</td>
    </tr>
    <tr>
        <td>queryType</td>
        <td>Keywords to search in particular fields</td>
    </tr>
    <tr>
        <td>maxResults</td>
        <td>The maximum number of elements to return with this request.</td>
    </tr>
    <tr>
        <td>startIndex</td>
        <td>The position in the collection at which to start the list of results.</td>
    </tr>
    <tr>
        <td>langRestrict</td>
        <td>Restrict the search results to those with a certain language by specifying langRestrict to a two-letter ISO-639-1 code, such as "en" or "fr".</td>
    </tr>
    <tr>
        <td>orderBy</td>
        <td>Order of the volume search results.</td>
    </tr>
    <tr>
        <td>printType</td>
        <td>Restrict to books or magazines.</td>
    </tr>
</table>

### Get book by ID
To get a book from the ID.
```dart
final Book book = await GoogleBooksApi().getBookById('H0taAAAAYAAJ');
```

### Get book by ISBN
To get a book from the ISBN.
```dart
final Book book = await GoogleBooksApi().getBookByIsbn('0771595158');
```