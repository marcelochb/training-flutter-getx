import 'package:flutter/cupertino.dart';
import 'package:pocket_getx/app/core/theme/color_theme.dart';

class LinkButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPress;
  const LinkButtonWidget({Key key, this.label, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              label,
              style: TextStyle(
                color: ColorTheme.instance.element,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
