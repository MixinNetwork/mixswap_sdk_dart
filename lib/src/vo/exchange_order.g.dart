// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangeOrder _$ExchangeOrderFromJson(Map<String, dynamic> json) =>
    ExchangeOrder(
      payAssetUuid: json['payAssetUuid'] as String,
      payAmount: json['payAmount'] as String,
      receiveAssetUuid: json['receiveAssetUuid'] as String,
      receiveAmount: json['receiveAmount'] as String,
      refundAmount: json['refundAmount'] as String,
      minReceiveAmount: json['minReceiveAmount'] as String,
      tradeStatus: json['tradeStatus'] as String,
    );

Map<String, dynamic> _$ExchangeOrderToJson(ExchangeOrder instance) =>
    <String, dynamic>{
      'payAssetUuid': instance.payAssetUuid,
      'payAmount': instance.payAmount,
      'receiveAssetUuid': instance.receiveAssetUuid,
      'receiveAmount': instance.receiveAmount,
      'refundAmount': instance.refundAmount,
      'minReceiveAmount': instance.minReceiveAmount,
      'tradeStatus': instance.tradeStatus,
    };
