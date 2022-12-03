import 'package:core_module/core_module.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

class DataSourceMock extends Mock implements WeatherDatasource {}

void main() {
  late WeatherRepository repository =
      WeatherRepository(datasource: DataSourceMock());

  test('o searchWeather deve retornar um WeatherModel', () async {
    final searchWeather = await repository.searchWeather(city: 'Brasilia');

    expect(searchWeather, isA<WeatherModel>());
    expect(searchWeather!.city, isNotNull);
  });

  test(
      'o remoteSearchWeather deve retornar um Map com as informacoes da cidade de acordo com a API',
      () async {
    DataSourceMock datasource = DataSourceMock();
    final data = await datasource.remoteSearchWeather(city: 'Cuiabá');
    expect(data, isA<Map>());
    print(data.toString());
  });
}
