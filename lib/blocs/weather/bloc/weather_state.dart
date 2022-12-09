part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  WeatherState({Object? object}) {
    if (object != null) props.add(object);
  }

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoaded({required this.weatherModel}) {
    props.add(weatherModel);
  }
}

class WeatherErrorState extends WeatherState {}
