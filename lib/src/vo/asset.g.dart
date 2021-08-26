// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Asset _$AssetFromJson(Map<String, dynamic> json) => Asset(
      uuid: json['uuid'] as String,
      symbol: json['symbol'] as String?,
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String,
      priceUsdt: json['priceUsdt'] as String,
      chainAsset:
          ChainAsset.fromJson(json['chainAsset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AssetToJson(Asset instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'symbol': instance.symbol,
      'name': instance.name,
      'iconUrl': instance.iconUrl,
      'priceUsdt': instance.priceUsdt,
      'chainAsset': instance.chainAsset,
    };
