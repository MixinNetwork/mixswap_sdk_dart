import 'package:dio/dio.dart';

import 'vo/asset.dart';
import 'vo/exchange.dart';
import 'vo/mix_response.dart';
import 'vo/order.dart';
import 'vo/route_data.dart';

const mixSwapBaseUrl = 'https://mixswap.exchange/api/v1';

class Client {
  Client(BaseOptions? dioOptions) {
    _dio = Dio(dioOptions);
    _dio.options.baseUrl = mixSwapBaseUrl;
  }
  late Dio _dio;

  Future<MixResponse<RouteData>> getRoutes(
          String payAssetUuid, String receiveAssetUuid, String payAmount) =>
      MixResponse.request<RouteData>(
        _dio.get('/trade/routes', queryParameters: {
          'payAssetUuid': payAssetUuid,
          'receiveAssetUuid': receiveAssetUuid,
          'payAmount': payAmount,
        }),
        (json) => RouteData.fromJson(json),
      );

  Future<MixResponse<Order>> getOrder(String traceId) =>
      MixResponse.request<Order>(
        _dio.get('/order/$traceId'),
        (json) => Order.fromJson(json),
      );

  Future<MixResponse<List<Asset>>> getAssets() =>
      MixResponse.requestList<Asset>(
        _dio.get('/assets'),
        (json) => Asset.fromJson(json),
      );

  Future<MixResponse<List<Exchange>>> getExchanges() =>
      MixResponse.requestList<Exchange>(
        _dio.get('/exchanges'),
        (json) => Exchange.fromJson(json),
      );
}
