import 'package:core_module/core_module.dart';
import 'package:core_module/feature/data/datasources/weather_datasource.dart';

import 'package:flutter_test/flutter_test.dart';

class WeatherDatasourceMock extends Mock implements WeatherDatasource {}

void main() {
  group('Teste da funcão remoteSearchWeather usando map', () {
    late WeatherDatasourceMock datasourceMock;
    late Map<String, dynamic>? mapMock;

    setUpAll(() {
      datasourceMock = WeatherDatasourceMock();
      mapMock = {
        "temperature": "+25 °C",
        "wind": "9 km/h",
        "description": "Sunny",
        "forecast": [
          {"day": "1", "temperature": "25 °C", "wind": "5 km/h"},
          {"day": "2", "temperature": "+23 °C", "wind": "17 km/h"},
          {"day": "3", "temperature": "+24 °C", "wind": "19 km/h"}
        ]
      };
    });

    test('Deve retornar o objeto cidade.', () async {
      when(() => datasourceMock.remoteSearchWeather(city: 'Brasilia'))
          .thenAnswer((_) => Future.value(mapMock));

      final responseMock =
          await datasourceMock.remoteSearchWeather(city: 'Brasilia');

      expect(responseMock, mapMock);
    });

    test('Deve retornar nulo caso não seja passado nenhuma cidade.', () async {
      when(() => datasourceMock.remoteSearchWeather(city: ''))
          .thenAnswer((_) => Future.value(null));

      final responseMock = await datasourceMock.remoteSearchWeather(city: '');

      expect(responseMock, null);
    });
  });
}
