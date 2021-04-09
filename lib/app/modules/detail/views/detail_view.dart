import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';
import 'package:pocket_getx/app/components/molecules/cardForeignNme/cardForeignName_widget.dart';
import 'package:pocket_getx/app/components/molecules/cardMtg/cardMtg_widget.dart';
import 'package:pocket_getx/app/core/theme/color_theme.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorTheme.instance.element,
          title: Text('Detalhes'),
          elevation: 0.0,
        ),
        body: Obx(
          () => Stack(
            children: [
              Container(
                color: ColorTheme.instance.element,
              ),
              if (controller.isLoading.value)
                SpinKitRotatingCircle(
                  color: Colors.white,
                  size: 50.0,
                )
              else
                ListView(children: [
                  Column(children: [
                    CardMtgWidget(
                      name: controller.mtg.value.name,
                      type: controller.mtg.value.type,
                      imageUrl: controller.mtg.value.imageUrl,
                      artist: controller.mtg.value.artist,
                      text: controller.mtg.value.text,
                      isBackgroundColorWhite: false,
                    ),
                    Container(
                      height: 500,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.mtg.value.foreignNames.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return CardForeignNameWidget(
                              item: controller.mtg.value.foreignNames[index],
                              isBackgroundColorWhite: true,
                            );
                          }),
                    ),
                  ]),
                ]),
            ],
          ),
        ));
  }
}
