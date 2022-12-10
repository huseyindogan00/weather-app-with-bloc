// ignore_for_file: must_be_immutable

part of 'weather_bloc.dart';

@immutable
abstract class WeatherState extends Equatable {
  final WeatherModel weatherModel;

  const WeatherState(this.weatherModel);

  @override
  List<Object> get props => [weatherModel];
}

class WeatherInitialState extends WeatherState {
  const WeatherInitialState(super.weatherModel);
}

class WeatherLoadingState extends WeatherState {
  const WeatherLoadingState(super.weatherModel);
}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;

  const WeatherLoadedState({required this.weatherModel}) : super(weatherModel);
}

class WeatherErrorState extends WeatherState {
  const WeatherErrorState(super.weatherModel);
}

enum WeatherStatus { initial, loading, loaded, error }
