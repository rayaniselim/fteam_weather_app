import 'package:core_module/core_module.dart';
import 'package:core_module/feature/data/repositories/weather_repository.dart';

import 'package:flutter_test/flutter_test.dart';

class WeatherRepositoryMock extends Mock implements WeatherRepository {}

void main() {
  group('Teste mocado', () {
    late WeatherRepositoryMock repositoryMock;
    late WeatherModel? weatherMock;

    setUpAll(() {
      repositoryMock = WeatherRepositoryMock();

      weatherMock = const WeatherModel(
        description: 'description',
        forecast: [
          ForecastModel(
            temperature: 'temperature1',
            wind: 'wind1',
            day: 'day1',
          ),
          ForecastModel(
            temperature: 'temperature2',
            wind: 'wind2',
            day: 'day2',
          ),
        ],
        temperature: 'temperature',
        wind: 'wind',
        city: 'city',
      );
    });

    test('Deve retornar o objeto cidade.', () async {
      when(() => repositoryMock.searchWeather(city: 'Brasilia'))
          .thenAnswer((_) => Future.value(weatherMock));

      final WeatherModel? weather = await repositoryMock.searchWeather(
        city: 'Brasilia',
      );

      expect(weather, weatherMock);
    });

    test('Deve retornar nulo caso não seja passado nenhuma cidade', () async {
      when(() => repositoryMock.searchWeather(city: ''))
          .thenAnswer((_) => Future.value(null));

      final WeatherModel? weather = await repositoryMock.searchWeather(
        city: '',
      );

      expect(weather, null);
    });
  });
}
