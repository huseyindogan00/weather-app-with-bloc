import 'package:flutter/material.dart';

class WidgetEndUpdate extends StatelessWidget {
  const WidgetEndUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Son Güncelleme ' + TimeOfDay(hour: 20, minute: 45).format(context),
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.grey.shade600),
    );
  }
}
