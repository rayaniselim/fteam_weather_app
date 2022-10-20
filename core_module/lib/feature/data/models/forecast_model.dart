import '../repositories/forecast_repository.dart';

class ForecastModel {
  final String temperature;
  final String wind; // vento
  final String day;

  const ForecastModel({
    required this.temperature,
    required this.wind,
    required this.day,
  });

  factory ForecastModel.fromMap(Map<String, dynamic> forecast) {
    return ForecastModel(
      temperature: forecast['temperature'],
      wind: forecast['wind'],
      day: forecast['day'],
    );
  }

  Future<ForecastModel> getForecastData() {
    return ForecastRepository().getForecastData();
  }
}
