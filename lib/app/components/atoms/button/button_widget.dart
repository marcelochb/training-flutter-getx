import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocket_getx/app/core/theme/color_theme.dart';

import 'button_controller.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key key, this.label, this.onPress}) : super(key: key);
  final String label;
  final VoidCallback onPress;

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  final buttonController = ButtonController(size: 0.0);
  var sizeButton = 0.0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(_getSizePage);
    super.initState();
  }

  _getSizePage(_) {
    final sizePage = MediaQuery.of(context).size.width;
    buttonController.setSize(sizePage);
    sizeButton = sizePage;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: buttonController,
        builder: (context, snapshot) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
            child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        ColorTheme.instance.element),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)))),
                onPressed: () {
                  buttonController.setSize(0.0);
                  Future.delayed(const Duration(milliseconds: 500), () {
                    widget.onPress();
                    buttonController.setSize(sizeButton);
                  });
                },
                child: AnimatedContainer(
                  duration: buttonController.duration,
                  width: buttonController.size,
                  // curve: buttonController.curve,
                  height: 50,
                  child: Text(
                    widget.label,
                  ),
                  alignment: Alignment.center,
                )),
          );
        });
  }
}
