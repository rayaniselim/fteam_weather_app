import 'package:core_module/core_module.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

class DataSourceMock extends Mock implements WeatherDatasource {}

void main() {
  late WeatherRepository repository;
  late WeatherDatasource datasource;

  setUp(() {
    datasource = DataSourceMock();
    repository = WeatherRepository(datasource: datasource);
  });

  test('o searchWeather deve retornar um WeatherModel', () async {
    final dataMock = {
      'temperature': 'temperature',
      'wind': 'wind',
      'description': 'description',
      'forecast': [
        {
          'temperature': 'temperature',
          'wind': 'wind',
          'day': 'day',
        }
      ],
    };

    when(
      () => datasource.remoteSearchWeather(city: 'Brasilia'),
    ).thenAnswer((_) async => dataMock);

    final searchWeather = await repository.searchWeather(city: 'Brasilia');

    expect(searchWeather, isA<WeatherModel>());
    expect(searchWeather!.city, isNotNull);
  });

  test(
    'o searchWeather deve retornar nulo quando o datasource retornar nulo',
    () async {
      when(
        () => datasource.remoteSearchWeather(city: 'Brasilia'),
      ).thenAnswer((_) async => null);

      final searchWeather = await repository.searchWeather(city: 'Brasilia');

      expect(searchWeather, isNull);

    },
  );
}
