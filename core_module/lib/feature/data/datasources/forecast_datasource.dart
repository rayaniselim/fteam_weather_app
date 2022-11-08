import 'package:core_module/feature/data/datasources/weather_datasource.dart';

class ForecastDatasource implements WeatherDatasource {
  @override
  Future<Map<String, dynamic>> getWeatherData() async {
    return {
      'day': 'https://goweather.herokuapp.com/weather/',
      'wind': 'https://goweather.herokuapp.com/weather/',
      'temperature': 'https://goweather.herokuapp.com/weather/',
    };
  }
}
