// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exchange _$ExchangeFromJson(Map<String, dynamic> json) => Exchange(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String,
    );

Map<String, dynamic> _$ExchangeToJson(Exchange instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'iconUrl': instance.iconUrl,
    };
