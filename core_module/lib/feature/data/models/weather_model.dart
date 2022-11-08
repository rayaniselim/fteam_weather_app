import 'forecast_model.dart';

class WeatherModel {
  final String? city;
  final String temperature;
  final String wind;
  final String description;
  final List<ForecastModel> forecast;

  const WeatherModel({
    this.city,
    required this.temperature,
    required this.wind,
    required this.description,
    required this.forecast,
  });

  factory WeatherModel.fromMap(Map jsonMap) {
    return WeatherModel(
      temperature: jsonMap['temperature'],
      wind: jsonMap['wind'],
      description: jsonMap['description'],
      forecast: List<ForecastModel>.from(jsonMap['forecast'].map(
        (element) => ForecastModel.fromMap(element),
      )).toList(),
    );
  }

  Map toMap() {
    return {
      temperature: temperature,
      wind: wind,
      description: description,
      forecast: forecast,
    };
  }

  WeatherModel copyWith({
    String? city,
    String? temperature,
    String? wind,
    String? description,
    List<ForecastModel>? forecast,
  }) {
    return WeatherModel(
      city: city ?? this.city,
      description: description ?? this.description,
      forecast: forecast ?? this.forecast,
      temperature: temperature ?? this.temperature,
      wind: wind ?? this.wind,
    );
  }
}
