import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_with_bloc/blocs/weather/bloc/weather_bloc.dart';
import 'package:weather_app_with_bloc/locator.dart';
import 'package:weather_app_with_bloc/widgets/widget_weather_app.dart';

void main() {
  setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<WeatherBloc>(
        create: (context) => WeatherBloc(),
        child: WeatherAppWidget(),
      ),
    );
  }
}
