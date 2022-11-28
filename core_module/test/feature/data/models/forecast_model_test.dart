import 'package:core_module/core_module.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('fromMap() deve retornar um ForecastModel Válido', () {
    final forecast = ForecastModel.fromMap({
      'temperature': 'temperature',
      'wind': 'wind',
      'day': 'day',
    });

    expect(forecast, isA<ForecastModel>());
    expect(forecast.day, isA<String>());
    expect(forecast.temperature, contains('temperature'));
    expect(forecast.wind, isNotNull);
  });

  test('toMap() deve retornar um Map<String, dynamic> Válido', () {
    const forecast = ForecastModel(
      temperature: 'temperature',
      wind: 'wind',
      day: '1',
    );

    final json = forecast.toMap();
    expect(json, isA<Map>());
    expect(json['city'], null);
    expect(json['temperature'], forecast.temperature);
    expect(json['wind'], forecast.wind);
  });
}
