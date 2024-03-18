// ignore: file_names
import 'package:flutter/material.dart';

import 'HomeCoordinator.dart';
import 'HomeViewModel.dart';
import 'package:news_app/App/Components/TitleWidget.dart';

class HomeWidget extends StatefulWidget {
  final HomeCoordinator coordinator;
  final HomeViewModel viewModel;
  const HomeWidget({super.key, required this.coordinator, required this.viewModel});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeViewModel _viewModel;
  late HomeCoordinator _coordinator;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  void initState() {
    _viewModel = widget.viewModel;
    _coordinator = widget.coordinator;
    setupBinding();

    super.initState();
  }

  setupBinding() {
    _viewModel.outputs.notification.listen((notification) {
      if (_scaffoldKey.currentContext == null) {
        return;
      }

      ScaffoldMessenger.of(_scaffoldKey.currentContext!).showSnackBar(notification.snackbar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          title: TitleWidget(title: _viewModel.outputs.title)
        ),
        body: const Center(child: Text("Hi")),
      ),
    );
  }

  updateView() => setState(() {});
}
