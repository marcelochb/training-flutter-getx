import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pocket_getx/app/components/atoms/loading/loading_widget.dart';
import 'package:pocket_getx/app/components/atoms/loadingListViewItem/loadingListViewItem_widget.dart';

class ListViewWidget extends StatelessWidget {
  final List<dynamic> mtgList;
  final bool isLoading;
  final bool isLoadingInfinityScroll;
  final Widget Function(BuildContext, int) itemBuilder;
  final ScrollController scrollController;

  final VoidCallback loadData;

  const ListViewWidget(
      {Key key,
      this.mtgList,
      this.isLoading,
      this.loadData,
      this.isLoadingInfinityScroll,
      this.itemBuilder,
      this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading) return LoadingWidget();

    return Stack(
      children: [
        ListView.builder(
            itemCount: mtgList.length,
            controller: scrollController,
            addAutomaticKeepAlives: false,
            dragStartBehavior: DragStartBehavior.down,
            itemBuilder: itemBuilder),
        if (isLoadingInfinityScroll) LoadingListViewItem(),
      ],
    );
  }
}
