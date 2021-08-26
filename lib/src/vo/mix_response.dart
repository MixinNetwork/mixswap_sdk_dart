import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class MixResponse<T> with EquatableMixin {
  MixResponse(
    this.data,
  );

  factory MixResponse.fromJson(
      Map<String, dynamic> json, T Function(dynamic) parser) {
    final dataJson = json['data'];
    final dynamic data = dataJson == null ? null : parser(dataJson);
    return MixResponse<T>(data);
  }

  T data;

  static Future<MixResponse<T>> request<T>(
      Future<Response> future, T Function(dynamic) parser) async {
    final response = (await future).data;
    return MixResponse<T>.fromJson(response, parser);
  }

  static Future<MixResponse<List<T>>> requestList<T>(
      Future<Response> future, T Function(dynamic) parser) async {
    final response = (await future).data as Map<String, dynamic>;
    final dataJsonList = response['data'];
    assert(dataJsonList is List);
    return MixResponse<List<T>>(
        (dataJsonList as List).map((e) => parser(e)).toList());
  }

  static Future<MixResponse<void>> requestVoid(Future<Response> future) async {
    await future;
    return MixResponse(null);
  }

  @override
  List<Object?> get props => [
        data,
      ];
}
