import 'package:flutter/material.dart';
import 'package:news_app/App/Features/Home/HomeWidget.dart';
import 'package:news_app/Utilities/classes/Coordinator.dart';

import 'HomeFactory.dart';

class HomeCoordinator extends Coordinator {
  late BuildContext _context;
  late HomeWidget _widget;

  HomeCoordinator({required BuildContext context}) {
    _context = context;
    _widget = HomeFactory.makeHome(coordinator: this);
  }

  @override
  start() async {
    Navigator.pushReplacement(_context, MaterialPageRoute(builder: (context) => _widget));
  }
}
