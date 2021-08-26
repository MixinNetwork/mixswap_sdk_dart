// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteData _$RouteDataFromJson(Map<String, dynamic> json) => RouteData(
      id: json['id'] as String,
      payAssetUuid: json['payAssetUuid'] as String,
      receiveAssetUuid: json['receiveAssetUuid'] as String,
      payAmount: json['payAmount'] as String,
      estimateReceiveAmount: json['estimateReceiveAmount'] as String,
      sources: (json['sources'] as List<dynamic>)
          .map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
      rank: (json['rank'] as List<dynamic>)
          .map((e) => Rank.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestSourceReceiveAmount: json['bestSourceReceiveAmount'] as String,
    );

Map<String, dynamic> _$RouteDataToJson(RouteData instance) => <String, dynamic>{
      'id': instance.id,
      'payAssetUuid': instance.payAssetUuid,
      'receiveAssetUuid': instance.receiveAssetUuid,
      'payAmount': instance.payAmount,
      'estimateReceiveAmount': instance.estimateReceiveAmount,
      'sources': instance.sources,
      'rank': instance.rank,
      'bestSourceReceiveAmount': instance.bestSourceReceiveAmount,
    };
