import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class MixResponse<T> with EquatableMixin {
  MixResponse(this.data);

  factory MixResponse._fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) parser,
  ) {
    final dataJson = json['data'] as Map<String, dynamic>;
    final data = parser(dataJson);
    return MixResponse<T>(data);
  }

  T data;

  static Future<MixResponse<T>> request<T>(
    Future<Response<Map<String, dynamic>>> future,
    T Function(Map<String, dynamic>) parser,
  ) async {
    final response = (await future).data!;
    return MixResponse<T>._fromJson(response, parser);
  }

  static Future<MixResponse<List<T>>> requestList<T>(
    Future<Response<Map<String, dynamic>>> future,
    T Function(Map<String, dynamic>) parser,
  ) async {
    final response = (await future).data!;
    final dataJsonList = response['data'] as List<dynamic>;
    return MixResponse<List<T>>(
      dataJsonList
          .map((dynamic e) => parser(e as Map<String, dynamic>))
          .toList(),
    );
  }

  static Future<MixResponse<void>> requestVoid(
    Future<Response<Map<String, dynamic>>> future,
  ) async {
    await future;
    return MixResponse(null);
  }

  @override
  List<Object?> get props => [
        data,
      ];
}
