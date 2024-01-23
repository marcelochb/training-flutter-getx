import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pocket_getx/app/components/atoms/loading/loading_widget.dart';
import 'package:pocket_getx/app/components/atoms/loadingListViewItem/loadingListViewItem_widget.dart';

class ListViewWidget extends StatelessWidget {
  final List<dynamic> data;
  final bool isLoading;
  final bool isLoadingInfinityScroll;
  final Widget Function(BuildContext, int) itemBuilder;
  final ScrollController scrollController;

  const ListViewWidget(
      {Key? key,
      required this.data,
      required this.isLoading,
      required this.isLoadingInfinityScroll,
      required this.itemBuilder,
      required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading) return LoadingWidget();

    return Stack(
      children: [
        ListView.builder(
            itemCount: data.length,
            controller: scrollController,
            addAutomaticKeepAlives: false,
            dragStartBehavior: DragStartBehavior.down,
            itemBuilder: itemBuilder),
        if (isLoadingInfinityScroll) LoadingListViewItem(),
      ],
    );
  }
}
