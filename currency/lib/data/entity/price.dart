import 'package:json_annotation/json_annotation.dart';

part 'price.g.dart';

@JsonSerializable()
class Price {
  final String? code;
  final String? codein;
  final String name;
  final String high;
  final String low;
  final String bid;
  final String ask;
  final String timestamp;

  const Price({
    required this.code,
    required this.codein,
    required this.name,
    required this.high,
    required this.low,
    required this.bid,
    required this.ask,
    required this.timestamp,
  });

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
