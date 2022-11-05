import '../data/models/weather_model.dart';

abstract class WeatherEvent {}

class LoadWeathersEvent extends WeatherEvent {}

class AddWeatherEvent extends WeatherEvent {
  WeatherModel weather;

  AddWeatherEvent({
    required this.weather,
  });
}
