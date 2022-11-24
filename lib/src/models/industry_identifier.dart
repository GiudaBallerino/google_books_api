import 'package:equatable/equatable.dart';

import 'models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'industry_identifier.g.dart';

@JsonSerializable()
class IndustryIdentifier extends Equatable {
  const IndustryIdentifier({
    this.type = '',
    this.identifier = '',
  });

  final String type;
  final String identifier;

  IndustryIdentifier copyWith({
    String? type,
    String? identifier,
  }) {
    return IndustryIdentifier(
      type: type ?? this.type,
      identifier: identifier ?? this.identifier,
    );
  }

  static IndustryIdentifier fromJson(JsonMap json) => _$IndustryIdentifierFromJson(json);

  JsonMap toJson() => _$IndustryIdentifierToJson(this);

  @override
  List<Object?> get props => [
    type,
    identifier,
  ];
}