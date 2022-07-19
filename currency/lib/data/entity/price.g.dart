// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      code: json['code'] as String?,
      codein: json['codein'] as String?,
      name: json['name'] as String,
      high: json['high'] as String,
      low: json['low'] as String,
      bid: json['bid'] as String,
      ask: json['ask'] as String,
      createDate: json['create_date'] as String,
    );

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'code': instance.code,
      'codein': instance.codein,
      'name': instance.name,
      'high': instance.high,
      'low': instance.low,
      'bid': instance.bid,
      'ask': instance.ask,
      'create_date': instance.createDate,
    };
