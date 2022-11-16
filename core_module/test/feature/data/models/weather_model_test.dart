import 'package:core_module/core_module.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late WeatherModel? weatherModel;

  weatherModel = const WeatherModel(
    description: 'description',
    forecast: [
      ForecastModel(
        temperature: 'temperature',
        wind: 'wind',
        day: 'day',
      ),
    ],
    temperature: 'temperature1',
    wind: 'wind',
    city: 'city',
  );

  test('Deve retornar pegar objeto cidade.', () {
    final map = weatherModel!.city;
    expect(map!.isNotEmpty, equals(true));
  });

  test('deve retornar o tipo List Forecast', () {
    weatherModel!.forecast;
    expect(weatherModel.forecast, equals(isA<List>()));
  });
}
