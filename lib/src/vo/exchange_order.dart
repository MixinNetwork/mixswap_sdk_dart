import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exchange_order.g.dart';

@JsonSerializable()
class ExchangeOrder with EquatableMixin {
  @JsonKey(name: 'payAssetUuid')
  String payAssetUuid;
  @JsonKey(name: 'payAmount')
  String payAmount;
  @JsonKey(name: 'receiveAssetUuid')
  String receiveAssetUuid;
  @JsonKey(name: 'receiveAmount')
  String receiveAmount;
  @JsonKey(name: 'refundAmount')
  String refundAmount;
  @JsonKey(name: 'minReceiveAmount')
  String minReceiveAmount;
  @JsonKey(name: 'tradeStatus')
  String tradeStatus;

  ExchangeOrder(
      {required this.payAssetUuid,
      required this.payAmount,
      required this.receiveAssetUuid,
      required this.receiveAmount,
      required this.refundAmount,
      required this.minReceiveAmount,
      required this.tradeStatus});

  factory ExchangeOrder.fromJson(Map<String, dynamic> json) =>
      _$ExchangeOrderFromJson(json);

  Map<String, dynamic> toJson() => _$ExchangeOrderToJson(this);

  @override
  List<Object?> get props => [
        payAssetUuid,
        payAmount,
        receiveAssetUuid,
        receiveAmount,
        refundAmount,
        minReceiveAmount,
        tradeStatus,
      ];
}
