import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chain_asset.g.dart';

@JsonSerializable()
class ChainAsset with EquatableMixin {
  ChainAsset(
      {required this.uuid,
      required this.symbol,
      required this.name,
      required this.iconUrl});

  @JsonKey(name: 'uuid')
  String uuid;
  @JsonKey(name: 'symbol')
  String? symbol;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'iconUrl')
  String iconUrl;
  factory ChainAsset.fromJson(Map<String, dynamic> json) =>
      _$ChainAssetFromJson(json);

  Map<String, dynamic> toJson() => _$ChainAssetToJson(this);

  @override
  List<Object?> get props => [
        uuid,
        symbol,
        name,
        iconUrl,
      ];
}
