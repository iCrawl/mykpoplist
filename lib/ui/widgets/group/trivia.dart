import 'package:flutter/material.dart';
import 'package:mykpoplist/ui/widgets/heading.dart';

class GroupTrivia extends StatelessWidget {
  const GroupTrivia({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          const Heading(
            first: 'Trivia',
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                const Text(
                  'It\'s been scientifically proven that MAMAMOO is objectively the best girl group.',
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Moonbyul is actually the most important person on Earth.',
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'MAMAMOO is the gayest group.',
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
