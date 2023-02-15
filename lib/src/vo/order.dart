import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import './exchange_order.dart';

part 'order.g.dart';

@JsonSerializable()
class Order with EquatableMixin {
  Order({
    required this.payAssetUuid,
    required this.payAmount,
    required this.receiveAssetUuid,
    required this.receiveAmount,
    required this.refundAmount,
    required this.tradePrice,
    required this.orderStatus,
    required this.refundStatus,
    required this.minReceiveAmount,
    required this.estimateReceiveAmount,
    required this.estimateBestSourceReceiveAmount,
    required this.profitAmount,
    required this.usdtProfitAmount,
    required this.exchangeOrders,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  @JsonKey(name: 'payAssetUuid')
  String payAssetUuid;
  @JsonKey(name: 'payAmount')
  String payAmount;
  @JsonKey(name: 'receiveAssetUuid')
  String receiveAssetUuid;
  @JsonKey(name: 'receiveAmount', fromJson: _amountFromJson)
  String? receiveAmount;
  @JsonKey(name: 'refundAmount', fromJson: _amountFromJson)
  String? refundAmount;
  @JsonKey(name: 'tradePrice')
  String? tradePrice;
  @JsonKey(name: 'orderStatus')
  String orderStatus;
  @JsonKey(name: 'refundStatus')
  String refundStatus;
  @JsonKey(name: 'minReceiveAmount', fromJson: _amountFromJson)
  String? minReceiveAmount;
  @JsonKey(name: 'estimateReceiveAmount', fromJson: _amountFromJson)
  String? estimateReceiveAmount;
  @JsonKey(name: 'estimateBestSourceReceiveAmount', fromJson: _amountFromJson)
  String? estimateBestSourceReceiveAmount;
  @JsonKey(name: 'profitAmount', fromJson: _amountFromJson)
  String? profitAmount;
  @JsonKey(name: 'usdtProfitAmount', fromJson: _amountFromJson)
  String? usdtProfitAmount;
  List<ExchangeOrder> exchangeOrders;

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  List<Object?> get props => [
        payAssetUuid,
        payAmount,
        receiveAssetUuid,
        receiveAmount,
        refundAmount,
        tradePrice,
        orderStatus,
        refundStatus,
        minReceiveAmount,
        estimateReceiveAmount,
        estimateBestSourceReceiveAmount,
        profitAmount,
        usdtProfitAmount,
        exchangeOrders,
      ];

  static String? _amountFromJson(dynamic amount) =>
      (amount == Null || amount == null || amount == 'null')
          ? null
          : amount.toString();
}
