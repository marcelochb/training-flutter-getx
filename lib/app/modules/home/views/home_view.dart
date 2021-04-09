import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pocket_getx/app/components/molecules/card/card_widget.dart';
import 'package:pocket_getx/app/components/organisms/listView/listView_widget.dart';
import 'package:pocket_getx/app/core/theme/color_theme.dart';
import 'package:pocket_getx/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTheme.instance.background,
        title: Text('HomePage'),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  // controller.signOut();
                },
                child: Icon(
                  Icons.logout,
                  size: 26.0,
                ),
              )),
        ],
        leading: Container(
            margin: const EdgeInsets.only(left: 10),
            child: Image.asset('assets/images/logo.png')),
      ),
      body: Obx(() => ListViewWidget(
            mtgList: controller.mtgList,
            isLoading: controller.isLoadingPage.value,
            scrollController: controller.listViewInfinityScrollController,
            loadData: () => controller.getAll(),
            isLoadingInfinityScroll: controller.isLoadingInfinityScroll.value,
            itemBuilder: (_, index) {
              return CardWidget(
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
