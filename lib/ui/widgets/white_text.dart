import 'package:flutter/material.dart';

class WhiteText extends StatelessWidget {
  const WhiteText({
    Key key,
    @required this.str,
  }) : super(key: key);

  final String str;

  @override
  Widget build(BuildContext context) => Text(
        str,
        style: const TextStyle(color: Colors.white),
      );
}
