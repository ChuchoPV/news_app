import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/Utilities/classes/ScreenNotification.dart';
import 'package:rxdart/rxdart.dart';

import 'HomeViewModel+Dependencies.dart';

class HomeViewModel implements HomeViewModelType, HomeViewModelInputs, HomeViewModelOutputs {
  // Properties
  @override
  late HomeViewModelInputs inputs = this;

  @override
  late HomeViewModelOutputs outputs = this;

  // Outputs
  @override
  BehaviorSubject<bool> isLoading = BehaviorSubject<bool>.seeded(false);
  @override
  PublishSubject<ScreenNotification> notification = PublishSubject<ScreenNotification>();
  @override
  BehaviorSubject<String> title = BehaviorSubject<String>.seeded("Home");

  // Private
  late HomeDependencies _dependencies;

  HomeViewModel({required HomeDependencies dependencies}) {
    _dependencies = dependencies;
    outputs = this;
    inputs = this;
  }
}
