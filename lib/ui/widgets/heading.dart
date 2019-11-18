import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key key,
    @required this.first,
    this.second = '',
  }) : super(key: key);

  final String first;
  final String second;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.fromLTRB(20.0, 15.0, 24.0, 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Text(
                first,
                style: const TextStyle(
                  color: const Color(0xFF101010),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              child: Text(
                second,
                style: const TextStyle(
                  color: const Color(0xFF767676),
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      );
}
