import 'package:flutter/material.dart';

class WidgetLocation extends StatelessWidget {
  WidgetLocation({super.key, required this.selectCity});

  final String selectCity;

  @override
  Widget build(BuildContext context) {
    return Text(
      selectCity,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}
