import 'package:flutter/material.dart';
import 'package:mykpoplist/ui/widgets/white_text.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            color: const Color(0xFF141414),
            margin: const EdgeInsets.only(top: 50.0),
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: const WhiteText(str: 'Github'),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: const WhiteText(str: 'Contact Us'),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: const WhiteText(str: 'Discord'),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: const WhiteText(str: 'API'),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: const WhiteText(str: 'Stats'),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: const WhiteText(str: 'Become a Content Moderator'),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: const WhiteText(str: 'Logout'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      );
}
