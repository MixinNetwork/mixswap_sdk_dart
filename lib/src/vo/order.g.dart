// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      payAssetUuid: json['payAssetUuid'] as String,
      payAmount: json['payAmount'] as String,
      receiveAssetUuid: json['receiveAssetUuid'] as String,
      receiveAmount: json['receiveAmount'] as String,
      refundAmount: json['refundAmount'] as String,
      tradePrice: json['tradePrice'] as String,
      orderStatus: json['orderStatus'] as String,
      refundStatus: json['refundStatus'] as String,
      minReceiveAmount: json['minReceiveAmount'] as String,
      estimateReceiveAmount: json['estimateReceiveAmount'] as String,
      estimateBestSourceReceiveAmount:
          json['estimateBestSourceReceiveAmount'] as String,
      profitAmount: json['profitAmount'] as String,
      usdtProfitAmount: json['usdtProfitAmount'] as String,
      exchangeOrders: (json['exchangeOrders'] as List<dynamic>)
          .map((e) => ExchangeOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'payAssetUuid': instance.payAssetUuid,
      'payAmount': instance.payAmount,
      'receiveAssetUuid': instance.receiveAssetUuid,
      'receiveAmount': instance.receiveAmount,
      'refundAmount': instance.refundAmount,
      'tradePrice': instance.tradePrice,
      'orderStatus': instance.orderStatus,
      'refundStatus': instance.refundStatus,
      'minReceiveAmount': instance.minReceiveAmount,
      'estimateReceiveAmount': instance.estimateReceiveAmount,
      'estimateBestSourceReceiveAmount':
          instance.estimateBestSourceReceiveAmount,
      'profitAmount': instance.profitAmount,
      'usdtProfitAmount': instance.usdtProfitAmount,
      'exchangeOrders': instance.exchangeOrders,
    };
