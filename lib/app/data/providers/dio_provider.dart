import 'package:dio/dio.dart';
import 'package:pocket_getx/app/data/providers/api_provider_interface.dart';

class DioProvider implements ApiProviderInterface {
  final Dio api;
  DioProvider({required this.api});

  getPaginated(String baseUrl, int initialPage, int pageLimitByRequest) async {
    return await api.get(
      baseUrl,
      queryParameters: {
        'page': initialPage,
        'pageSize': pageLimitByRequest,
      },
    );
  }

  getAll(String baseUrl) async {
    return await api.get(baseUrl);
  }
}
