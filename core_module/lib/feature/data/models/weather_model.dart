import 'package:core_module/feature/data/repositories/weather_repository.dart';

import 'forecast_model.dart';

/// REGRA DE NEGOCIO

class WeatherModel implements WeatherRepository {
  final String city;
  final String temperature;
  final String wind; // vento
  final String description;
  final List<ForecastModel> forecast; // ?? PREVISAO

  const WeatherModel({
    required this.city,
    required this.temperature,
    required this.wind,
    required this.description,
    required this.forecast,
  });

  factory WeatherModel.fromMap(Map jsonMap) {
    return WeatherModel(
      city: jsonMap['city'],
      temperature: jsonMap['temperature'], // '20 °C',
      wind: jsonMap['wind'], // '20 km/h',
      description: jsonMap['description'], // 'Partly cloudy',
      forecast: jsonMap['forecast'].map(
        (element) => ForecastModel.fromMap(element),
      ),
    );
  }

  Map toMap() {
    return {
      city: city,
      temperature: temperature, // '20 °C',
      wind: wind, // '20 km/h',
      description: description, // 'Partly cloudy',
      forecast: forecast,
    };
  }

  @override
  Future<WeatherModel> getForecastData() {
    // TODO: implement getForecastData
    throw UnimplementedError();
  }

  @override
  List<WeatherRepository> loadWeathers() {
    // TODO: implement loadWeathers
    throw UnimplementedError();
  }

  // factory WeatherModel.fromMap(Map<String, dynamic> weather, [param1]) {
  //   return WeatherModel(
  //     city: weather['city'],
  //     temperature: weather['temperature'], // '20 °C',
  //     wind: weather['wind'], // '20 km/h',
  //     description: weather['description'], // 'Partly cloudy',
  //     forecasteList: weather['forecaste'].map(
  //       (element) => ForecastModel.fromMap(element),
  //     ),
  // );
  // }
}
