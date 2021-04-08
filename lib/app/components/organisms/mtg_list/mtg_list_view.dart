import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:pocket_getx/app/components/molecules/cardListItem/cardListItm_widget.dart';
import 'package:pocket_getx/app/core/theme/color_theme.dart';

class MtgListView extends StatefulWidget {
  final List<dynamic> mtgList;
  final bool isLoading;
  final bool isLoadingInfinityScroll;

  final VoidCallback loadData;

  const MtgListView(
      {Key key,
      this.mtgList,
      this.isLoading,
      this.loadData,
      this.isLoadingInfinityScroll})
      : super(key: key);

  @override
  _MtgListViewState createState() => _MtgListViewState();
}

class _MtgListViewState extends State<MtgListView> {
  final ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        widget.loadData();
      }
    });
    super.initState();
  }

  disposed() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isLoading)
      return SpinKitRotatingCircle(
        color: ColorTheme.instance.element,
        size: 50.0,
      );

    return Stack(
      children: [
        ListView.builder(
            itemCount: widget.mtgList.length,
            controller: _scrollController,
            addAutomaticKeepAlives: false,
            dragStartBehavior: DragStartBehavior.down,
            itemBuilder: (context, index) {
              return CardListItemWidget(
                item: widget.mtgList[index],
              );
            }),
        if (widget.isLoadingInfinityScroll)
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
