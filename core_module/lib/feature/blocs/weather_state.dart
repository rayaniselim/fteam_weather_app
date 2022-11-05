import '../data/models/weather_model.dart';

abstract class WeatherState {
  List<WeatherModel> weather;

  WeatherState({
    required this.weather,
  });
}

class WeatherInitialState extends WeatherState {
  WeatherInitialState() : super(weather: []);
}

class WeatherSuccessState extends WeatherState {
  WeatherSuccessState({
    required List<WeatherModel> weather,
  }) : super(weather: weather);
}
