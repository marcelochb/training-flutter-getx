import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pocket_getx/app/core/utils/constants.dart';
import 'package:pocket_getx/app/data/providers/api_provider_interface.dart';
import 'package:pocket_getx/app/data/providers/dio_provider.dart';

class DataBingings implements Bindings {
  @override
  void dependencies() {
    Get.put<ApiProviderInterface>(
        DioProvider(api: Dio(BaseOptions(baseUrl: URL_BASE))));
  }
}
