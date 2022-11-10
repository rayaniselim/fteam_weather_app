import 'package:core_module/core_module.dart';

import '../datasources/weather_datasource.dart';

class WeatherRepository {
  final WeatherDatasource datasource;

  WeatherRepository({required this.datasource});

  Future<WeatherModel?> searchWeather({
    required String city,
  }) async {
    final Map<String, dynamic>? data = await datasource.remoteSearchWeather(
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
