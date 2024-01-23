import 'package:flutter/cupertino.dart';
import 'package:pocket_getx/app/core/theme/color_theme.dart';

class LabelWidget extends StatelessWidget {
  const LabelWidget(
      {Key? key,
      required this.text,
      this.isMargingTop = false,
      this.isBackgroundColorWhite = true})
      : super(key: key);
  final String text;
  final bool isMargingTop;
  final bool isBackgroundColorWhite;

  Widget _textLocal() {
    return Text(
      '$text',
      style: TextStyle(
          fontSize: 12,
          color: isBackgroundColorWhite
              ? ColorTheme.instance.element
              : ColorTheme.instance.background,
          fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isMargingTop)
      return Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: _textLocal(),
      );
    else
      return _textLocal();
  }
}
