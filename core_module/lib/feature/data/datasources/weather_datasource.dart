import 'forecast_datasource.dart';

abstract class WeatherDatasource {
  factory WeatherDatasource() => ForecastDatasource();

  Future<Map<String, dynamic>> getWeatherData() async {
    return {
      'day': 'https://goweather.herokuapp.com/weather/curitiba',
      'wind': 'https://goweather.herokuapp.com/weather/curitiba',
      'temperature': 'https://goweather.herokuapp.com/weather/curitiba',
      'city': 'https://goweather.herokuapp.com/weather/curitiba',
      'description': 'https://goweather.herokuapp.com/weather/curitiba',
    };
  }
}
