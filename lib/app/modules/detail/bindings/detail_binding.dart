import 'package:get/get.dart';
import 'package:pocket_getx/app/modules/detail/providers/detail_provider.dart';
import 'package:pocket_getx/app/modules/detail/repositories/detail_repository.dart';

import '../controllers/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(() => DetailController());
    Get.lazyPut<DetailProvider>(() => DetailProvider());
    Get.lazyPut<DetailRepository>(() => DetailRepository());
  }
}
