part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  WeatherEvent({Object? object}) {
    if (object != null) props.add(object);
  }

  @override
  List<Object> get props => [];
}

class FetchWeatherEvent extends WeatherEvent {
  final String cityName;

  FetchWeatherEvent({required this.cityName}) : super(object: cityName);
}
