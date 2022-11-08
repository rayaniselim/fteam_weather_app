import 'package:core_module/core_module.dart';

class WeatherDatasource {
  final IHttpClient client;

  WeatherDatasource({required this.client});

  Future<Map<String, dynamic>?> remoteLoadWeather({
    required String baseUrl,
    required String city,
  }) async {
    try {
      final Response response = await client.get(
        baseUrl: baseUrl,
        path: city,
      );

      return response.data;
    } catch (error) {
      return null;
    }
  }
}
