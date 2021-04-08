import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pocket_getx/app/data/repositories/mtg_repository.dart';

class HomeController extends GetxController {
  final MtgRepository mtgRepository;

  HomeController({@required this.mtgRepository})
      : assert(mtgRepository != null);

  final RxList<dynamic> mtgList = [].obs;
  final RxBool isLoadingPage = true.obs;
  final RxBool isLoadingInfinityScroll = false.obs;

  int _currentMtgListPage = 1;

  _incrementPage() => _currentMtgListPage++;

  _turnOnLoadingInfinityScrool() {
    if (_currentMtgListPage > 1) isLoadingInfinityScroll.value = true;
  }

  _turnOffLoadingInfinityScroll() {
    isLoadingInfinityScroll.value = false;
  }

  _loadingData() async {
    mtgList.value +=
        await mtgRepository.getAllPaginated(initialPage: _currentMtgListPage);
  }

  _turnOfLoadingPage() => isLoadingPage.value = false;

  getAll() async {
    _turnOnLoadingInfinityScrool();

    await _loadingData();

    _turnOfLoadingPage();

    _incrementPage();

    _turnOffLoadingInfinityScroll();
  }

  @override
  void onInit() {
    getAll();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
