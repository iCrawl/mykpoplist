import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
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
                const Color(0xFFFF7373),
                const Color(0xFFE25D5D),
              ],
            ),
          ),
          child: Row(
            children: <Widget>[
              Image.asset(
                'assets/images/favorite.png',
                width: 15.0,
                height: 15.0,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Stan This',
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
}
