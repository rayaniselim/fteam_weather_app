/// REGRA DE NEGOCIO

class WeatherModel {
  final String temperature;
  final String wind; // vento
  final String description;
  // final List<ForecastModel> forecasteList; // ?? PREVISAO

  const WeatherModel({
    required this.temperature,
    required this.wind,
    required this.description,
    // required this.forecasteList,
  });

  factory WeatherModel.fromMap(Map<String, dynamic> weather) {
    return WeatherModel(
      temperature: weather['temperature'], // '20 °C',
      wind: weather['wind'], // '20 km/h',
      description: weather['description'], // 'Partly cloudy',
      // forecasteList: weather['forecaste'].map(
      // (element) => ForecastModel.fromMap(element),
      // ),

      //[
      //   {'day': '1', 'temperature': '+24 °C', 'wind': '5 km/h'},
      //   {'day': '2', 'temperature': '+14 °C', 'wind': '14 km/h'},
      //   {'day': '3', 'temperature': '7 °C', 'wind': ' km/h'}
      // ]
    );
  }
}
