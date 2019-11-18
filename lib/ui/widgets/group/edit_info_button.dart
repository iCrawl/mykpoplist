import 'package:flutter/material.dart';

class EditInfoButton extends StatelessWidget {
  const EditInfoButton({
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
                const Color(0xFFF2994A),
                const Color(0xFFDF8332),
              ],
            ),
          ),
          child: const Text(
            'Edit Info',
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}
