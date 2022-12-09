import 'package:flutter/material.dart';

class WidgetSelectCity extends StatefulWidget {
  const WidgetSelectCity({super.key});

  @override
  State<WidgetSelectCity> createState() => _WidgetSelectCityState();
}

class _WidgetSelectCityState extends State<WidgetSelectCity> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Şehir Seç'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Form(
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    labelText: 'Şehir',
                    hintText: 'Sehir Seçiniz',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context, _textController.text);
                  },
                  icon: Icon(Icons.search))
            ],
          ),
        ),
      ),
    );
  }
}
