import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exchange.g.dart';

@JsonSerializable()
class Exchange with EquatableMixin {
  Exchange({
    required this.symbol,
    required this.name,
    required this.iconUrl,
  });

  factory Exchange.fromJson(Map<String, dynamic> json) =>
      _$ExchangeFromJson(json);

  @JsonKey(name: 'symbol')
  String symbol;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'iconUrl')
  String iconUrl;

  Map<String, dynamic> toJson() => _$ExchangeToJson(this);

  @override
  List<Object?> get props => [
        symbol,
        name,
        iconUrl,
      ];
}
