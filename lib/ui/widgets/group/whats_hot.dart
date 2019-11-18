import 'package:flutter/material.dart';

class WhatsHot extends StatelessWidget {
  const WhatsHot({
    Key key,
    @required this.group,
  }) : super(key: key);

  final group;

  @override
  Widget build(BuildContext context) => Container(
      color: const Color(0xFFEEEEEE),
      child: Container(
        height: 60.0,
        margin: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
        alignment: Alignment.centerLeft,
        child: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/whatshot.png',
              width: 35.0,
              height: 35.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Text(
                '${group.name} has a comeback scheduled for XXXXXXX XX, XXXX.',
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
}
