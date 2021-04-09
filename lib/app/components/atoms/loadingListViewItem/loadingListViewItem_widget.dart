import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pocket_getx/app/core/theme/color_theme.dart';

class LoadingListViewItem extends StatelessWidget {
  const LoadingListViewItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SpinKitHourGlass(
          color: ColorTheme.instance.background,
          size: 50.0,
        ),
      ],
    ));
  }
}
