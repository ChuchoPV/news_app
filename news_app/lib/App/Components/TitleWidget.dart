import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class TitleWidget extends StatefulWidget {
  final BehaviorSubject<String> title;

  const TitleWidget({super.key, required this.title});

  @override
  State<TitleWidget> createState() => _TitleState();
}

class _TitleState extends State<TitleWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: widget.title,
        builder: (context, snapshot) {
          return Text(snapshot.data ?? "");
        });
  }
}
