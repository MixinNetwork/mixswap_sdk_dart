import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route.g.dart';

@JsonSerializable()
class Route with EquatableMixin {
  Route({
    required this.routePath,
    required this.routeIds,
    required this.routeAmounts,
    required this.payAmount,
    required this.receiveAmount,
    this.tradeType,
    this.priceImpact,
  });

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

  @JsonKey(name: 'routePath')
  List<String> routePath;
  @JsonKey(name: 'routeIds')
  List<String> routeIds;
  @JsonKey(name: 'routeAmounts')
  List<String> routeAmounts;
  @JsonKey(name: 'payAmount')
  String payAmount;
  @JsonKey(name: 'receiveAmount')
  String receiveAmount;
  @JsonKey(name: 'tradeType')
  String? tradeType;
  @JsonKey(name: 'priceImpact')
  String? priceImpact;

  Map<String, dynamic> toJson() => _$RouteToJson(this);

  @override
  List<Object?> get props => [
        routePath,
        routeIds,
        routeAmounts,
        payAmount,
        receiveAmount,
        tradeType,
        priceImpact
      ];
}
