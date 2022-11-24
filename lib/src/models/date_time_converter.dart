import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String? json) {
    final dateArray = (json ?? '0000-00-00').split('-');

    if(DateTime.tryParse(json!)!=null){
      return DateTime.parse(json);
    }
    else{
      return DateTime(int.parse(dateArray[0]));
    }
  }

  @override
  String toJson(DateTime json) => json.toIso8601String();
}