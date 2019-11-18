import 'package:flutter/material.dart';

class RoundedCorners extends StatelessWidget {
  const RoundedCorners({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: child,
      );
}
