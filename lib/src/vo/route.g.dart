// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Route _$RouteFromJson(Map<String, dynamic> json) => Route(
      routePath:
          (json['routePath'] as List<dynamic>).map((e) => e as String).toList(),
      routeIds:
          (json['routeIds'] as List<dynamic>).map((e) => e as String).toList(),
      routeAmounts: (json['routeAmounts'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      payAmount: json['payAmount'] as String,
      receiveAmount: json['receiveAmount'] as String,
    );

Map<String, dynamic> _$RouteToJson(Route instance) => <String, dynamic>{
      'routePath': instance.routePath,
      'routeIds': instance.routeIds,
      'routeAmounts': instance.routeAmounts,
      'payAmount': instance.payAmount,
      'receiveAmount': instance.receiveAmount,
    };
