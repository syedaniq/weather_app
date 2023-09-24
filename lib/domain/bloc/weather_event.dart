part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class FetchWeather extends WeatherEvent {
  final Position _position;

  const FetchWeather(this._position);

  @override
  List<Object> get props => [_position];
}
