import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rank.g.dart';

@JsonSerializable()
class Rank with EquatableMixin {
  Rank({
    required this.symbol,
    required this.estimateReceiveAmount,
  });

  @JsonKey(name: 'symbol')
  String symbol;
  @JsonKey(name: 'estimateReceiveAmount')
  String estimateReceiveAmount;

  factory Rank.fromJson(Map<String, dynamic> json) => _$RankFromJson(json);

  Map<String, dynamic> toJson() => _$RankToJson(this);

  @override
  List<Object?> get props => [
        symbol,
        estimateReceiveAmount,
      ];
}
