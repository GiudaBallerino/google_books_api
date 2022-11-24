import 'package:equatable/equatable.dart';

import 'models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@JsonSerializable()
class Book extends Equatable {
  const Book({
    required this.id,
    this.etag = '',
    required this.volumeInfo,
    this.selfLink,
    required this.saleInfo,
  });

  final String id;
  final String? etag;
  final Uri? selfLink;
  final BookInfo volumeInfo;
  final SaleInfo saleInfo;

  Book copyWith({
    String? id,
    String? etag,
    Uri? selfLink,
    BookInfo? info,
    SaleInfo? saleInfo,
  }) {
    return Book(
      id: id ?? this.id,
      etag: etag ?? this.etag,
      selfLink: selfLink ?? this.selfLink,
      volumeInfo: info ?? this.volumeInfo,
      saleInfo: saleInfo ?? this.saleInfo,
    );
  }

  static Book fromJson(JsonMap json) => _$BookFromJson(json);

  JsonMap toJson() => _$BookToJson(this);

  @override
  List<Object?> get props => [
        id,
        etag,
        selfLink,
        volumeInfo,
        saleInfo,
      ];
}
