import 'package:get/get.dart';
import 'package:pocket_getx/app/data/models/mtg_model.dart';
import 'package:pocket_getx/app/data/repositories/mtg_repository.dart';

class DetailController extends GetxController {
  final MtgRepository mtgRepository;

  DetailController({required this.mtgRepository});

  final isLoading = true.obs;
  final Rx<Mtg> mtg = Mtg().obs;

  @override
  void onInit() async {
    await getById(id: Get.parameters['id'] ?? '');
    isLoading.value = false;
    super.onInit();
  }

  getById({required String id}) async {
    mtg.value = await mtgRepository.getById(id: id);
  }
}
