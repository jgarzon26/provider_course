import 'dart:collection';

import 'package:flutter/material.dart';
import '../screens/home/classes/bread_crumb.dart';

class BreadCrumbProvider extends ChangeNotifier{
  final List<BreadCrumb> _breadCrumbs = [];
  UnmodifiableListView<BreadCrumb> get breadCrumbs => UnmodifiableListView(_breadCrumbs);

  void addBreadCrumb(BreadCrumb breadCrumb) {
    for(final bc in _breadCrumbs) {
      bc.isActive = true;
    }

    _breadCrumbs.add(breadCrumb);
    notifyListeners();
  }

  void resetAll() {
    _breadCrumbs.clear();
    notifyListeners();
  }
}