import 'package:flutter/material.dart';
import 'package:mykpoplist/models/placeholder_data.dart';
import 'package:mykpoplist/ui/widgets/heading.dart';

class GroupLinks extends StatelessWidget {
  const GroupLinks({Key key, @required this.placeholder}) : super(key: key);

  final PlaceholderData placeholder;

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          const Heading(
            first: 'Links',
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(24.0, 24.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/spotify.png',
                  width: 40,
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  width: 160,
                  child: Text(
                    'Listen to ${placeholder.name.isNotEmpty ? placeholder.romaji + ' ' + '(' + placeholder.name + ')' : placeholder.romaji} on Spotify',
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
