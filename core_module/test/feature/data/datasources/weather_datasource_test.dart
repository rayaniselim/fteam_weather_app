import 'package:core_module/core_module.dart';

import 'package:mocktail/mocktail.dart';

/// Testa o HttpClient

class DioClientAdapterMock extends Mock implements DioClientAdapter {}

void main() {
  CustomResponse response;
  DioClientAdapter dio;
  WeatherRepository repository;
  WeatherDatasource datasource;
  IHttpClient iHttpClient;
}
