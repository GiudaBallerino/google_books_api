// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'industry_identifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndustryIdentifier _$IndustryIdentifierFromJson(Map<String, dynamic> json) =>
    IndustryIdentifier(
      type: json['type'] as String? ?? '',
      identifier: json['identifier'] as String? ?? '',
    );

Map<String, dynamic> _$IndustryIdentifierToJson(IndustryIdentifier instance) =>
    <String, dynamic>{
      'type': instance.type,
      'identifier': instance.identifier,
    };
