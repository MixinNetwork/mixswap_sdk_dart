import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import './rank.dart';
import './source.dart';

part 'route_data.g.dart';

@JsonSerializable()
class RouteData with EquatableMixin {
  RouteData({
    required this.id,
    required this.payAssetUuid,
    required this.receiveAssetUuid,
    required this.payAmount,
    required this.estimateReceiveAmount,
    required this.sources,
    required this.rank,
    required this.bestSourceReceiveAmount,
  });

  factory RouteData.fromJson(Map<String, dynamic> json) =>
      _$RouteDataFromJson(json);

  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'payAssetUuid')
  String payAssetUuid;
  @JsonKey(name: 'receiveAssetUuid')
  String receiveAssetUuid;
  @JsonKey(name: 'payAmount')
  String payAmount;
  @JsonKey(name: 'estimateReceiveAmount')
  String estimateReceiveAmount;
  @JsonKey(name: 'sources')
  List<Source> sources;
  @JsonKey(name: 'rank')
  List<Rank> rank;
  @JsonKey(name: 'bestSourceReceiveAmount')
  String bestSourceReceiveAmount;

  Map<String, dynamic> toJson() => _$RouteDataToJson(this);

  @override
  List<Object?> get props => [
        id,
        payAssetUuid,
        receiveAssetUuid,
        payAmount,
        estimateReceiveAmount,
        sources,
        rank,
        bestSourceReceiveAmount,
      ];
}
