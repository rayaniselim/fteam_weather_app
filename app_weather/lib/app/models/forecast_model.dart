class ForecastModel {
  final String temperature;
  final String wind; // vento
  final String day;

  const ForecastModel({
    required this.temperature,
    required this.wind,
    required this.day,
  });

  factory ForecastModel.fromMap(Map<String, dynamic> weather) {
    return ForecastModel(
      temperature: weather['temperature'],
      wind: weather['wind'],
      day: weather['day'],
    );
  }
}
