import 'package:core_module/core_module.dart';
import 'package:flutter_test/flutter_test.dart';

class ForecastModelMock extends Mock implements ForecastModel {}

void main() {
  late ForecastModel forecastMock;

  forecastMock = const ForecastModel(
    temperature: '20',
    wind: '10km/hm',
    day: 'day 1',
  );

  test('Deve retornar a temperatura de 20.', () {
    final object = forecastMock.temperature;
    expect(object.contains('20'), equals(true));
  });

  test('Deve retornar o objeto wind.', () {
    final object = forecastMock.wind;
    expect(object.isNotEmpty, equals(true));
  });
}
