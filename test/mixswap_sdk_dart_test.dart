import 'package:mixswap_sdk_dart/mixswap_sdk_dart.dart';
import 'package:dio/dio.dart';
import 'package:test/test.dart';

void main() {
  group('apis', () {
    final client = Client(null);
    test('test getAssets', () async {
      final response = await client.getAssets();
      print(response);
    });

    test('test route', () async {
      final response = await client.getRoutes(
          '4d8c508b-91c5-375b-92b0-ee702ed2dac5',
          'c6d0c728-2624-429b-8e0d-d9d19b6592fa',
          '1000');
      print(response);
    });

    test('test exchange', () async {
      final response = await client.getExchanges();
      print(response);
    });
  });
}
