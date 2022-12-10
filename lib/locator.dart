import 'package:get_it/get_it.dart';
import 'package:weather_app_with_bloc/data/service/weather_api_client.dart';
import 'package:weather_app_with_bloc/data/weather_repository.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => WeatherRepository());
  locator.registerLazySingleton(() => WeatherApiClient());
}
