import 'package:flutter/material.dart';
import 'package:mykpoplist/models/colors.dart';
import 'round_indicator.dart';

class KpopTabBarTab extends StatelessWidget {
  const KpopTabBarTab({
    Key key,
    @required this.name,
    this.active = false,
  }) : super(key: key);

  final String name;
  final bool active;

  @override
  Widget build(context) => Container(
        decoration: active ? RoundIndicator() : null,
        child: Text(
          name,
          style: TextStyle(
            color: active ? CustomColors.primaryColor : Colors.black,
            fontSize: 16.0,
          ),
        ),
      );
}

class KpopTabBar extends StatelessWidget with PreferredSizeWidget {
  KpopTabBar({
    Key key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(40.0);

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const KpopTabBarTab(name: 'Profile'),
            const KpopTabBarTab(name: 'Groups'),
            const KpopTabBarTab(name: 'Idols'),
            const KpopTabBarTab(name: 'Albums'),
            const KpopTabBarTab(name: 'Comebacks'),
          ],
        ),
      );
}
