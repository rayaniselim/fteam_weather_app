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

  factory WeatherModel.fromMap(Map<String, dynamic> json) {
    return WeatherModel(
      temperature: json['temperature'],
      wind: json['wind'],
      description: json['description'],
      forecast: List<ForecastModel>.from(
        json['forecast'].map((element) {
          return ForecastModel.fromMap(element);
        }),
      ).toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'temperature': temperature,
      'wind': wind,
      'description': description,
      'forecast': forecast,
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
