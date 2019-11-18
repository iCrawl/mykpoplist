import 'package:flutter/material.dart';
import 'package:mykpoplist/ui/widgets/heading.dart';

class GroupAbout extends StatelessWidget {
  const GroupAbout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          const Heading(
            first: 'About',
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
            child: const Text(
              'MAMAMOO (마마무) is a four-member girl group currently under RBW. They officially debuted on June 19, 2014 with the mini album Hello.',
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 15.0,
              ),
            ),
          )
        ],
      );
}
