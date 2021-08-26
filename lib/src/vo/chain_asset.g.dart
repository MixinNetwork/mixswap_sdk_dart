// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChainAsset _$ChainAssetFromJson(Map<String, dynamic> json) => ChainAsset(
      uuid: json['uuid'] as String,
      symbol: json['symbol'] as String?,
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String,
    );

Map<String, dynamic> _$ChainAssetToJson(ChainAsset instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'symbol': instance.symbol,
      'name': instance.name,
      'iconUrl': instance.iconUrl,
    };
