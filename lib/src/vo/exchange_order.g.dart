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
      receiveAmount: ExchangeOrder._amountFromJson(json['receiveAmount']),
      refundAmount: ExchangeOrder._amountFromJson(json['refundAmount']),
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
