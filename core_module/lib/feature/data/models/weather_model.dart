import 'forecast_model.dart';

/// REGRA DE NEGOCIO

class WeatherModel {
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

  factory WeatherModel.fromMap(Map json) {
    return WeatherModel(
      city: json['city'],
      temperature: json['temperature'], // '20 °C',
      wind: json['wind'], // '20 km/h',
      description: json['description'], // 'Partly cloudy',
      forecast: json['forecast'].map(
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
