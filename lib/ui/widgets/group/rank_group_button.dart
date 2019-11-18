import 'package:flutter/material.dart';

class RankGroupButton extends StatelessWidget {
  const RankGroupButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(
        elevation: 0,
        padding: EdgeInsets.zero,
        textColor: Colors.white,
        color: Colors.transparent,
        onPressed: () {},
        child: Ink(
          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFF73ABFF),
                const Color(0xFF5B90E0),
              ],
            ),
          ),
          child: const Text(
            'Rank Group',
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}
