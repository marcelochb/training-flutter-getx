import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pocket_getx/app/core/theme/color_theme.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpinKitRotatingCircle(
      color: ColorTheme.instance.element,
      size: 50.0,
    );
  }
}
