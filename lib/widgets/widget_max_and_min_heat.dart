import 'package:flutter/material.dart';

class WidgetMaxAndMinHeat extends StatelessWidget {
  const WidgetMaxAndMinHeat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Maksimum : ' + 24.toString() + '°C',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          'Minumum : ' + 17.toString() + '°C',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
