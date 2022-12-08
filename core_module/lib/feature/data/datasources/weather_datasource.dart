import 'package:core_module/core_module.dart';

class WeatherDatasource {
  final IHttpClient client;

  static const _baseUrl = 'https://goweather.herokuapp.com/weather/';

  WeatherDatasource({required this.client});

  Future<Map<String, dynamic>?> remoteSearchWeather({
    required String city,
  }) async {
    try {
      final response = await client.get(
        baseUrl: _baseUrl,
        path: city,
      );

      return response.data;
      // Não faça tratamento de erro generico(Sem 'on')
    } catch (error) {
      return null;
    }
  }
}
// TODO: poderia estar no module se fosse um app maior