import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import './route.dart';

part 'source.g.dart';

@JsonSerializable()
class Source with EquatableMixin {
  Source({
    required this.exchangeSymbol,
    required this.routes,
  });

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  @JsonKey(name: 'exchangeSymbol')
  String exchangeSymbol;
  @JsonKey(name: 'routes')
  List<Route> routes;

  Map<String, dynamic> toJson() => _$SourceToJson(this);

  @override
  List<Object?> get props => [
        exchangeSymbol,
        routes,
      ];
}
