import 'package:get/get.dart';
import 'package:pocket_getx/app/modules/home/providers/home_provider.dart';
import 'package:pocket_getx/app/modules/home/repositories/home_repository.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HomeProvider>(() => HomeProvider());
    Get.lazyPut<HomeRepository>(() => HomeRepository());
  }
}
