import 'package:core_module/core_module.dart';
import 'package:core_module/feature/data/datasources/weather_datasource.dart';
import 'package:core_module/feature/data/repositories/weather_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
      'Teste de integração com a API, pode não rodar caso a API esteja fora do ar',
      () {
    late Dio client;
    late DioClientAdapter clientAdapter;
    late WeatherDatasource datasource;
    late WeatherRepository repository;

    setUpAll(() {
      client = Dio();
      clientAdapter = DioClientAdapter(client);
      datasource = WeatherDatasource(client: clientAdapter);
      repository = WeatherRepository(datasource: datasource);
    });

    test('Deve retornar nulo caso não seja passado nenhuma cidade', () async {
      final WeatherModel? weather = await repository.searchWeather(
        city: '',
      );

      expect(weather, null);
    });

    test('Deve retornar não nulo', () async {
      final WeatherModel? weather = await repository.searchWeather(
        city: 'brasilia',
      );

      expect(weather, isNotNull);
    });
  });
}
