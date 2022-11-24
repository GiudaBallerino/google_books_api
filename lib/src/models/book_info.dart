import 'package:equatable/equatable.dart';
import 'package:google_books_api/src/models/date_time_converter.dart';

import 'models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book_info.g.dart';

@JsonSerializable()
@DateTimeConverter()
class BookInfo extends Equatable {
  const BookInfo({
    this.title = '',
    this.subtitle = '',
    this.authors = const [],
    this.publisher = '',
    this.averageRating = 0,
    this.categories = const [],
    this.contentVersion = '',
    this.description = '',
    this.industryIdentifiers = const [],
    required this.imageLinks,
    this.language = '',
    this.maturityRating = '',
    this.pageCount = 0,
    required this.publishedDate,
    this.rawPublishedDate = '',
    this.ratingsCount = 0,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  final String title;
  final String subtitle;
  final List<String> authors;
  final String publisher;
  final DateTime? publishedDate;
  final String rawPublishedDate;
  final String description;
  final List<IndustryIdentifier> industryIdentifiers;
  final int pageCount;
  final List<String> categories;
  final double averageRating;
  final int ratingsCount;
  final String maturityRating;
  final String contentVersion;
  final Map<String, Uri>? imageLinks;
  final String language;
  final Uri previewLink;
  final Uri infoLink;
  final Uri canonicalVolumeLink;

  BookInfo copyWith({
    String? title,
    String? subtitle,
    List<String>? authors,
    String? publisher,
    DateTime? publishedDate,
    String? rawPublishedDate,
    String? description,
    List<IndustryIdentifier>? industryIdentifiers,
    int? pageCount,
    List<String>? categories,
    double? averageRating,
    int? ratingsCount,
    String? maturityRating,
    String? contentVersion,
    Map<String, Uri>? imageLinks,
    String? language,
    Uri? previewLink,
    Uri? infoLink,
    Uri? canonicalVolumeLink,
  }) {
    return BookInfo(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      authors: authors ?? this.authors,
      publisher: publisher ?? this.publisher,
      publishedDate: publishedDate ?? this.publishedDate,
      rawPublishedDate: rawPublishedDate ?? this.rawPublishedDate,
      description: description ?? this.description,
      industryIdentifiers: industryIdentifiers ?? this.industryIdentifiers,
      pageCount: pageCount ?? this.pageCount,
      categories: categories ?? this.categories,
      averageRating: averageRating ?? this.averageRating,
      ratingsCount: ratingsCount ?? this.ratingsCount,
      maturityRating: maturityRating ?? this.maturityRating,
      contentVersion: contentVersion ?? this.contentVersion,
      imageLinks: imageLinks ?? this.imageLinks,
      language: language ?? this.language,
      previewLink: previewLink ?? this.previewLink,
      infoLink: infoLink ?? this.infoLink,
      canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
    );
  }

  static BookInfo fromJson(JsonMap json) => _$BookInfoFromJson(json);

  JsonMap toJson() => _$BookInfoToJson(this);

  @override
  List<Object?> get props => [
        title,
        subtitle,
        authors,
        publisher,
        publishedDate,
        rawPublishedDate,
        description,
        industryIdentifiers,
        pageCount,
        categories,
        averageRating,
        ratingsCount,
        maturityRating,
        contentVersion,
        imageLinks,
        language,
        previewLink,
        infoLink,
        canonicalVolumeLink,
      ];
}
