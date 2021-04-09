import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pocket_getx/app/core/utils/constants.dart';
import 'package:pocket_getx/app/data/providers/dio_provider.dart';
import 'package:pocket_getx/app/data/providers/mtg_provider.dart';
import 'package:pocket_getx/app/data/repositories/mtg_repository.dart';

import '../controllers/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(() => DetailController(
        mtgRepository: MtgRepository(mtgProvider: MtgProvider())));
  }
}
