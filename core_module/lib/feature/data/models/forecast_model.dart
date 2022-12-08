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

  Map<String, dynamic> toMap() {
    return {
      'temperature': temperature,
      'wind': wind,
      'day': day,
    };
  }
}
