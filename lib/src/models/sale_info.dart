
import 'models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sale_info.g.dart';

@JsonSerializable()
class SaleInfo {
  const SaleInfo({
    this.country = '',
    this.saleability = '',
    this.isEbook = false,
  });

  final String country;
  final String saleability;
  final bool isEbook;

  SaleInfo copyWith({
    String? country,
    String? saleability,
    bool? isEbook,
  }) {
    return SaleInfo(
      country: country ?? this.country,
      saleability: saleability ?? this.saleability,
      isEbook: isEbook ?? this.isEbook,
    );
  }

  static SaleInfo fromJson(JsonMap json) => _$SaleInfoFromJson(json);

  JsonMap toJson() => _$SaleInfoToJson(this);

  @override
  List<Object?> get props => [
    country,
    saleability,
    isEbook,
  ];
}