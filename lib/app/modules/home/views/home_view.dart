import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pocket_getx/app/components/organisms/mtg_list/mtg_list_view.dart';
import 'package:pocket_getx/app/core/theme/color_theme.dart';
import 'package:pocket_getx/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorTheme.instance.background,
          title: Text('HomePage')),
      body: Obx(() => MtgListView(
            mtgList: controller.mtgList,
            isLoading: controller.isLoadingPage.value,
            loadData: () => controller.getAll(),
            isLoadingInfinityScroll: controller.isLoadingInfinityScroll.value,
          )),
    );
  }
}
