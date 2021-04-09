import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pocket_getx/app/components/atoms/loading/loading_widget.dart';
import 'package:pocket_getx/app/components/atoms/loadingListViewItem/loadingListViewItem_widget.dart';

class ListViewWidget extends StatefulWidget {
  final List<dynamic> mtgList;
  final bool isLoading;
  final bool isLoadingInfinityScroll;
  final Widget Function(BuildContext, int) itemBuilder;

  final VoidCallback loadData;

  const ListViewWidget(
      {Key key,
      this.mtgList,
      this.isLoading,
      this.loadData,
      this.isLoadingInfinityScroll,
      this.itemBuilder})
      : super(key: key);

  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
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
    if (widget.isLoading) return LoadingWidget();

    return Stack(
      children: [
        ListView.builder(
            itemCount: widget.mtgList.length,
            controller: _scrollController,
            addAutomaticKeepAlives: false,
            dragStartBehavior: DragStartBehavior.down,
            itemBuilder: widget.itemBuilder),
        if (widget.isLoadingInfinityScroll) LoadingListViewItem(),
      ],
    );
  }
}
