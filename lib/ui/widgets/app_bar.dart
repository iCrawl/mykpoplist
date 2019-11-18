import 'package:flutter/material.dart';
import 'package:mykpoplist/models/colors.dart';
import 'package:mykpoplist/ui/widgets/tab_bar.dart';

class KpopAppBarLeading extends StatelessWidget {
  const KpopAppBarLeading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(left: 10.0),
        child: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      );
}

class KpopAppBarTitle extends StatelessWidget {
  const KpopAppBarTitle({
    Key key,
    @required this.appTitle,
  }) : super(key: key);

  final String appTitle;

  @override
  Widget build(BuildContext context) => Text(
        appTitle,
        style: const TextStyle(
          color: CustomColors.primaryColor,
          fontSize: 28.0,
          fontWeight: FontWeight.w500,
        ),
      );
}

class KpopAppBarSearchAction extends StatelessWidget {
  const KpopAppBarSearchAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(right: 10.0),
        child: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      );
}

class KpopAppBar extends AppBar {
  KpopAppBar({
    Key key,
    @required this.appTitle,
  }) : super(
          key: key,
          leading: const KpopAppBarLeading(),
          title: KpopAppBarTitle(
            appTitle: appTitle,
          ),
          centerTitle: true,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: CustomColors.primaryColor),
          actions: <Widget>[
            const KpopAppBarSearchAction(),
          ],
          bottom: KpopTabBar(),
        );

  final String appTitle;
}

class KpopSliverAppBar extends SliverAppBar {
  KpopSliverAppBar({
    Key key,
    @required this.appTitle,
  }) : super(
          key: key,
          leading: const KpopAppBarLeading(),
          title: KpopAppBarTitle(
            appTitle: appTitle,
          ),
          centerTitle: true,
          elevation: 0.0,
          pinned: true,
          iconTheme: const IconThemeData(color: CustomColors.primaryColor),
          actions: <Widget>[
            const KpopAppBarSearchAction(),
          ],
          bottom: KpopTabBar(),
        );

  final String appTitle;
}
