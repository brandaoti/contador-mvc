import 'package:flutter/material.dart';

class FloatingActionButtonComp extends StatelessWidget {
  final Widget icon;
  final Function onPressed;

  const FloatingActionButtonComp({
    Key key,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: icon,
      onPressed: onPressed,
    );
  }
}
