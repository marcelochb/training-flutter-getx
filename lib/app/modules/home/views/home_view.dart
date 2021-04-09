import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pocket_getx/app/components/molecules/listViewItem/listViewItem_widget.dart';
import 'package:pocket_getx/app/components/organisms/listView/listView_widget.dart';
import 'package:pocket_getx/app/core/theme/color_theme.dart';
import 'package:pocket_getx/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorTheme.instance.background,
          title: Text('HomePage')),
      body: Obx(() => ListViewWidget(
            mtgList: controller.mtgList,
            isLoading: controller.isLoadingPage.value,
            loadData: () => controller.getAll(),
            isLoadingInfinityScroll: controller.isLoadingInfinityScroll.value,
            itemBuilder: (_, index) {
              return ListViewItemWidget(
                name: controller.mtgList[index].name,
                artist: controller.mtgList[index].artist,
                type: controller.mtgList[index].type,
                text: controller.mtgList[index].text,
                imageUrl: controller.mtgList[index].imageUrl,
                navigateToDetail: () => controller.navigateToDetailPage(
                    id: controller.mtgList[index].id),
              );
            },
          )),
    );
  }
}
