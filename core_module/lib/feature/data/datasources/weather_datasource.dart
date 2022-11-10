import 'package:core_module/core_module.dart';

class WeatherDatasource {
  final IHttpClient client;

  WeatherDatasource({required this.client});

  Future<Map<String, dynamic>?> remoteSearchWeather({
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
// TODO: poderia estar no module se fosse um app maior