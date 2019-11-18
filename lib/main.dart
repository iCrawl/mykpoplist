import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mykpoplist/models/colors.dart';
import 'package:mykpoplist/provider/navigation.dart';
import 'package:mykpoplist/ui/screens/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class FixScrollBehavior extends ScrollBehavior {
  const FixScrollBehavior();

  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) =>
      child;
}

class FixPageTransitionsBuilder extends PageTransitionsBuilder {
  const FixPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
          route, context, animation, secondaryAnimation, child) =>
      child;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavigationProvider>.value(
          value: NavigationProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'MyKpopList',
        builder: (BuildContext context, Widget child) => ScrollConfiguration(
          behavior: const FixScrollBehavior(),
          child: child,
        ),
        theme: ThemeData(
          fontFamily: 'Rubik',
          backgroundColor: Colors.white,
          primaryColor: Colors.white,
          primarySwatch: CustomColors.colorScheme,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android: const FixPageTransitionsBuilder(),
              TargetPlatform.iOS: const FixPageTransitionsBuilder(),
              TargetPlatform.fuchsia: const FixPageTransitionsBuilder(),
            },
          ),
        ),
        home: Home(),
      ),
    );
  }
}
