part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent extends Equatable {
  const WeatherEvent(this.cityName);

  final String cityName;

  @override
  List<Object> get props => [cityName];
}

@immutable
class FetchWeatherEvent extends WeatherEvent {
  const FetchWeatherEvent(cityName) : super(cityName);
}
