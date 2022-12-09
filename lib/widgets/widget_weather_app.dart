import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_with_bloc/widgets/widget_end_update.dart';
import 'package:weather_app_with_bloc/widgets/widget_location.dart';
import 'package:weather_app_with_bloc/widgets/widget_max_and_min_heat.dart';
import 'package:weather_app_with_bloc/widgets/widget_select_city.dart';
import 'package:weather_app_with_bloc/widgets/widget_weather_app_image.dart';

class WeatherAppWidget extends StatelessWidget {
  String? selectCity = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
              onPressed: () async {
                selectCity = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WidgetSelectCity(),
                    ));
                print(selectCity);
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: WidgetLocation(selectCity: selectCity ?? '')),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: WidgetEndUpdate()),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: WidgetWeatherAppImage()),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: WidgetMaxAndMinHeat()),
            ),
          ],
        ),
      ),
    );
  }
}
