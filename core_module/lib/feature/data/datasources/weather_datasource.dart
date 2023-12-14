import 'package:core_module/core_module.dart';
import 'package:core_module/feature/data/datasources/weather_datasource%20copy.dart';

class WeatherDatasource implements IWeatherDatasource {
  @override
  final IHttpClient client;

  static const _baseUrl = 'https://goweather.herokuapp.com/weather/';

  WeatherDatasource({required this.client});

  @override
  Future<Map<String, dynamic>?> remoteSearchWeather({
    required String city,
  }) async {
    try {
      final response = await client.get(
        baseUrl: _baseUrl,
        path: city,
      );

      return response.data;
    } catch (error) {
      throw Exception('Erro no banco de dados');
    }
  }
}
