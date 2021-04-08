import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String label;
  final void Function(String) onChanged;
  final bool isSecurityText;
  final bool autoFocus;
  final void Function(String) onFieldSubmitted;
  final FocusNode focusNode;

  const InputWidget({
    Key key,
    this.label,
    this.onChanged,
    this.onFieldSubmitted,
    this.focusNode,
    this.isSecurityText = false,
    this.autoFocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: TextFormField(
        autofocus: autoFocus,
        onFieldSubmitted: onFieldSubmitted,
        focusNode: focusNode,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
        obscureText: isSecurityText,
        onChanged: onChanged,
      ),
    );
  }
}
