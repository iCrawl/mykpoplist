import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  String _route = 'home';

  String get route => _route;

  set route(String val) {
    _route = val;
    notifyListeners();
  }
}
