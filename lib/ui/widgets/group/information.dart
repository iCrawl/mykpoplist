import 'package:flutter/material.dart';

class GroupInformation extends StatelessWidget {
  const GroupInformation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  'assets/images/favorite.png',
                  width: 18.0,
                  height: 18.0,
                  color: Color(0xFF414141),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text('152,900 Fans'),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  'assets/images/rank.png',
                  width: 18.0,
                  height: 18.0,
                  color: Color(0xFF414141),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text('Rank 1'),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  'assets/images/member.png',
                  width: 18.0,
                  height: 18.0,
                  color: Color(0xFF414141),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text('4 Members'),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  'assets/images/debut.png',
                  width: 18.0,
                  height: 18.0,
                  color: Color(0xFF414141),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text('Debuted June 19, 2014'),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  'assets/images/org.png',
                  width: 18.0,
                  height: 18.0,
                  color: Color(0xFF414141),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text('Managed by Rainbow Bridge World'),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  'assets/images/fandom.png',
                  width: 18.0,
                  height: 18.0,
                  color: Color(0xFF414141),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text('Fandom Name: MooMoo'),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  'assets/images/release.png',
                  width: 18.0,
                  height: 18.0,
                  color: Color(0xFF414141),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text('Lastest release November 14, 2019 ✔'),
              ],
            ),
          ],
        ),
      );
}
