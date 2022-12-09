// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app_with_bloc/data/weather_repository.dart';
import 'package:weather_app_with_bloc/locator.dart';
import 'package:weather_app_with_bloc/models/weather/weather_mdoel.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository = locator<WeatherRepository>();

  WeatherBloc() : super(WeatherInitial()) {
    on<WeatherEvent>((event, emit) async* {
      if (event is FetchWeatherEvent) {
        yield WeatherLoadingState();
        try {
          final weatherModel = await weatherRepository.getWeather(event.cityName);
          WeatherLoaded(weatherModel: weatherModel);
        } catch (e) {
          yield WeatherErrorState();
        }
      }
    });
  }
}
