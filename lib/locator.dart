import 'package:get_it/get_it.dart';
import 'package:weather_app_with_bloc/blocs/weather/bloc/weather_bloc.dart';
import 'package:weather_app_with_bloc/data/service/weather_api_client.dart';
import 'package:weather_app_with_bloc/models/weather/weather_mdoel.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => WeatherErrorState());
  locator.registerLazySingleton(() => WeatherApiClient());
}
