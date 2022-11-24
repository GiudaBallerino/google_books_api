// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookInfo _$BookInfoFromJson(Map<String, dynamic> json) => BookInfo(
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      publisher: json['publisher'] as String? ?? '',
      averageRating: (json['averageRating'] as num?)?.toDouble() ?? 0,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      contentVersion: json['contentVersion'] as String? ?? '',
      description: json['description'] as String? ?? '',
      industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
              ?.map(
                  (e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      imageLinks: (json['imageLinks'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Uri.parse(e as String)),
      ),
      language: json['language'] as String? ?? '',
      maturityRating: json['maturityRating'] as String? ?? '',
      pageCount: json['pageCount'] as int? ?? 0,
      publishedDate: _$JsonConverterFromJson<String, DateTime>(
          json['publishedDate'], const DateTimeConverter().fromJson),
      rawPublishedDate: json['rawPublishedDate'] as String? ?? '',
      ratingsCount: json['ratingsCount'] as int? ?? 0,
      previewLink: Uri.parse(json['previewLink'] as String),
      infoLink: Uri.parse(json['infoLink'] as String),
      canonicalVolumeLink: Uri.parse(json['canonicalVolumeLink'] as String),
    );

Map<String, dynamic> _$BookInfoToJson(BookInfo instance) => <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'publishedDate': _$JsonConverterToJson<String, DateTime>(
          instance.publishedDate, const DateTimeConverter().toJson),
      'rawPublishedDate': instance.rawPublishedDate,
      'description': instance.description,
      'industryIdentifiers': instance.industryIdentifiers,
      'pageCount': instance.pageCount,
      'categories': instance.categories,
      'averageRating': instance.averageRating,
      'ratingsCount': instance.ratingsCount,
      'maturityRating': instance.maturityRating,
      'contentVersion': instance.contentVersion,
      'imageLinks':
          instance.imageLinks?.map((k, e) => MapEntry(k, e.toString())),
      'language': instance.language,
      'previewLink': instance.previewLink.toString(),
      'infoLink': instance.infoLink.toString(),
      'canonicalVolumeLink': instance.canonicalVolumeLink.toString(),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
