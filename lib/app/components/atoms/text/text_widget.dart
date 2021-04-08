import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key key, this.text, this.isBackgroundColorWhite = true})
      : super(key: key);
  final String text;
  final bool isBackgroundColorWhite;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(
        fontSize: 16,
        color: isBackgroundColorWhite ? Colors.black : Colors.white,
      ),
    );
  }
}
