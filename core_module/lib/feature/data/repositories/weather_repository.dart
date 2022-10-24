import '../datasources/weather_datasource.dart';
import '../models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel> getForecastData() async {
    final Map<String, dynamic> map = await WeatherDatasource().getWeatherData();

    return WeatherModel.fromMap(map);
  }
}
