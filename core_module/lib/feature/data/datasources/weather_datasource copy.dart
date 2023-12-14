import 'package:core_module/core_module.dart';

abstract class IWeatherDatasource {
  final IHttpClient client;

  const IWeatherDatasource({
    required this.client,
  });

  Future<Map<String, dynamic>?> remoteSearchWeather({
    required String city,
  });
}
