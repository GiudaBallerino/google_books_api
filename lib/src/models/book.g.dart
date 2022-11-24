// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) => Book(
      id: json['id'] as String,
      etag: json['etag'] as String? ?? '',
      volumeInfo: BookInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      selfLink: json['selfLink'] == null
          ? null
          : Uri.parse(json['selfLink'] as String),
      saleInfo: SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'id': instance.id,
      'etag': instance.etag,
      'selfLink': instance.selfLink?.toString(),
      'volumeInfo': instance.volumeInfo,
      'saleInfo': instance.saleInfo,
    };
