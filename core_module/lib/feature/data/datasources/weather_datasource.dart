import 'forecast_datasource.dart';

abstract class WeatherDatasource {
  factory WeatherDatasource() => ForecastDatasource();

  Future<Map<String, dynamic>> getWeatherData() async {
    return {
      'day': 'https://goweather.herokuapp.com/weather/',
      'wind': 'https://goweather.herokuapp.com/weather/',
      'temperature': 'https://goweather.herokuapp.com/weather/',
      'city': 'https://goweather.herokuapp.com/weather/',
      'description': 'https://goweather.herokuapp.com/weather/',
    };
  }
}
