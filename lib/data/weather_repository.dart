import 'dart:io';

import 'package:weather_app_with_bloc/data/weather_api_client.dart';
import 'package:weather_app_with_bloc/locator.dart';
import 'package:weather_app_with_bloc/models/weather/weather_mdoel.dart';
import 'package:http/http.dart' as http;

class WeatherRepository {
  WeatherApiClient weatherApiClient = locator<WeatherApiClient>();

  Future<WeatherModel> getWeather(String cityName) async {}
}
