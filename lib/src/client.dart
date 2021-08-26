import 'package:dio/dio.dart';

import 'vo/asset.dart';
import 'vo/mix_response.dart';

const mixSwapBaseUrl = 'https://mixswap.exchange/api/v1';

class Client {
  Client(BaseOptions? dioOptions) {
    _dio = Dio(dioOptions);
    _dio.options.baseUrl = mixSwapBaseUrl;
  }
  late Dio _dio;

  Future<MixResponse<List<Asset>>> getAssets() =>
      MixResponse.requestList<Asset>(
        _dio.get('/assets'),
        (json) => Asset.fromJson(json),
      );
}
