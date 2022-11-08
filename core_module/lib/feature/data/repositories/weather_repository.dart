import 'package:core_module/core_module.dart';

import '../datasources/weather_datasource.dart';

class WeatherRepository {
  final IHttpClient client;

  WeatherRepository({required this.client});

  Future<WeatherModel?> loadWeather({
    required String baseUrl,
    required String city,
  }) async {
    final datasource = WeatherDatasource(client: client);

    final Map<String, dynamic>? data = await datasource.remoteLoadWeather(
      baseUrl: baseUrl,
      city: city,
    );

    if (data != null) {
      final weather = WeatherModel.fromMap(data);

      final weatherWithCity = weather.copyWith(city: city);

      return weatherWithCity;
    }

    return null;
  }
}
