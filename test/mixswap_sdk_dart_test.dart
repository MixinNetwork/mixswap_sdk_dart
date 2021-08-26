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
  });
}
