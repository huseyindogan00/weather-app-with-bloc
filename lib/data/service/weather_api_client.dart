import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app_with_bloc/models/weather/weather_model.dart';
import 'package:weather_app_with_bloc/utilities/api_key.dart';

class WeatherApiClient {
  static const String baseUrl = 'api.weatherapi.com/v1/current.json?key={ApiKey.API_KEY}&';

  final http.Client httpClient = http.Client();

  Future<WeatherModel> getWeather(String cityName, AirQualityData airQualityData) async {
    final url = Uri.https(
        baseUrl, '/v1/current.json', {'key': ApiKey.API_KEY, 'q': cityName, 'aqi': airQualityData.stringExtension});

    final response = await httpClient.get(url);

    if (response.statusCode != 200) {
      throw Exception('veri getirilemedi');
    }

    final requestAnswer = jsonDecode(response.body);

    return WeatherModel.fromJson(requestAnswer);
  }
}

enum AirQualityData { yes, no }

extension AirQualityDataExtension on AirQualityData {
  String get stringExtension => this.name;
}
