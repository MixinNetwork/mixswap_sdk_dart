import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import './chain_asset.dart';

part 'asset.g.dart';

@JsonSerializable()
class Asset with EquatableMixin {
  Asset({
    required this.uuid,
    required this.symbol,
    required this.name,
    required this.iconUrl,
    required this.priceUsdt,
    required this.chainAsset,
  });

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

  @JsonKey(name: 'uuid')
  String uuid;
  @JsonKey(name: 'symbol')
  String? symbol;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'iconUrl')
  String iconUrl;
  @JsonKey(name: 'priceUsdt')
  String priceUsdt;
  @JsonKey(name: 'chainAsset')
  ChainAsset chainAsset;

  Map<String, dynamic> toJson() => _$AssetToJson(this);

  @override
  List<Object?> get props => [
        uuid,
        symbol,
        name,
        iconUrl,
      ];
}
