import 'package:core_module/core_module.dart';

class WeatherRepository {
  final IHttpClient client;

  WeatherRepository({required this.client});

  Future<WeatherModel?> loadWeather({
    required String baseUrl,
    required String city,
  }) async {
    final Response response = await client.get(
      baseUrl: baseUrl,
      path: city,
    );

    final data = response.data;

    if (data is Map) {
      final weather = WeatherModel.fromMap(data);

      final weatherWithCity = weather.copyWith(city: city);

      return weatherWithCity;
    }

    return null;
  }
}
