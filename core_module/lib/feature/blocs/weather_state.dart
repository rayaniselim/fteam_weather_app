import '../data/models/weather_model.dart';

abstract class WeatherState {
  List<WeatherModel> weathers = [];

  WeatherState({
    required this.weathers,
  });
}

class WeatherInitialState extends WeatherState {
  WeatherInitialState() : super(weathers: []);
}

class WeatherSuccessState extends WeatherState {
  WeatherSuccessState({
    required List<WeatherModel> weather,
  }) : super(weathers: weather);
}
