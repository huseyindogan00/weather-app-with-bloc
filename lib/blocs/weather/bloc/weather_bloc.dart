// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app_with_bloc/data/service/weather_api_client.dart';
import 'package:weather_app_with_bloc/data/weather_repository.dart';
import 'package:weather_app_with_bloc/locator.dart';
import 'package:weather_app_with_bloc/models/weather/weather_model.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository = locator<WeatherRepository>();

  WeatherBloc() : super(WeatherInitialState(WeatherModel())) {
    on<FetchWeatherEvent>((event, emit) async* {
      emit(WeatherLoadingState(WeatherModel()));
      try {
        final weatherModel = await weatherRepository.getWeather(event.cityName, AirQualityData.no);

        print(weatherModel.current);

        emit(WeatherLoadedState(weatherModel: weatherModel));
      } catch (e) {
        emit(WeatherErrorState(WeatherModel()));
      }
    });
  }
}
