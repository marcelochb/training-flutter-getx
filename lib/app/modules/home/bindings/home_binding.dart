import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pocket_getx/app/core/utils/constants.dart';
import 'package:pocket_getx/app/data/providers/dio_provider.dart';
import 'package:pocket_getx/app/data/providers/mtg_provider.dart';
import 'package:pocket_getx/app/data/repositories/mtg_repository.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(
        mtgRepository: MtgRepository(
            mtgProvider: MtgProvider(
                httpClient:
                    DioProvider(api: Dio(BaseOptions(baseUrl: URL_BASE)))))));
  }
}
