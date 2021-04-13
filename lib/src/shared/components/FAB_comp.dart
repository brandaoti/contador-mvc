import 'package:flutter/material.dart';

class FloatActionButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const FloatActionButton({
    Key key,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(icon),
      onPressed: onPressed,
    );
  }
}
