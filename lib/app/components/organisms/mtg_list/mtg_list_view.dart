import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';
import 'package:pocket_getx/app/components/molecules/cardListItem/cardListItm_widget.dart';
import 'package:pocket_getx/app/core/theme/color_theme.dart';
import 'package:pocket_getx/app/data/models/mtg_model.dart';

class MtgListView extends GetView {
  final bool isLoading;
  final bool isLoadingMtgListItem;
  final ScrollController scrollController;
  final List<Mtg> mtgList;

  MtgListView(this.isLoading, this.isLoadingMtgListItem, this.scrollController,
      this.mtgList);
  @override
  Widget build(BuildContext context) {
    if (isLoading)
      return SpinKitRotatingCircle(
        color: ColorTheme.instance.element,
        size: 50.0,
      );

    return Stack(
      children: [
        ListView.builder(
            itemCount: mtgList.length,
            controller: scrollController,
            addAutomaticKeepAlives: false,
            dragStartBehavior: DragStartBehavior.down,
            itemBuilder: (context, index) {
              return CardListItemWidget(
                item: mtgList[index],
              );
            }),
        if (controller.isLoadingCardListItem)
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SpinKitHourGlass(
                color: ColorTheme.instance.background,
                size: 50.0,
              ),
            ],
          )),
      ],
    );
  }
}
