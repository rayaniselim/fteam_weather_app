import 'dart:math';

import 'package:core_module/core_module.dart';
import 'package:flutter_test/flutter_test.dart';

/// TODO: testar primeiro  fromMap
void main() {
  test('fromMap() deve retornar um WeatherModel Válido', () {
    final model = WeatherModel.fromJson({
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
    });

    expect(model.city, null);
    expect(model.temperature, contains('temperature'));
    expect(model.wind, isNotNull);
    expect(model.description,
        allOf([isNotNull, isA<String>(), contains('description')]));
    expect(model.forecast,
        allOf([isNotNull, isNotEmpty, isA<List<ForecastModel>>()]));
    expect(model.forecast, isA<List<ForecastModel>>());
    expect(model, isA<WeatherModel>());
  });

  test('toMap() deve retornar um Map<String, dynamic> Válido', () {
    const model = WeatherModel(
      city: 'city',
      description: 'description',
      temperature: 'temperature',
      wind: 'wind',
      forecast: [],
    );

    final json = model.toJson();

    expect(json['city'], null);
    expect(json['description'], model.description);
    expect(json['temperature'], model.temperature);
    expect(json['wind'], model.wind);
    expect(json['forecast'], allOf([model.forecast, isEmpty]));
  });

  test('copyWith() deve retornar uma cópia WeatherModel com novos valores', () {
    const model = WeatherModel(
      city: 'brasilia',
      description: 'description',
      temperature: 'temperature',
      wind: 'wind',
      forecast: [
        ForecastModel(
          temperature: 'temperature',
          wind: 'wind',
          day: 'day',
        ),
      ],
    );

    final copy = model.copyWith(
      city: 'Curitiba',
      description: 'novo description',
      temperature: 'novo temperature',
      wind: 'novo wind',
      forecast: [
        const ForecastModel(
          temperature: 'novo temperature',
          wind: 'novo wind',
          day: 'novo day',
        ),
      ],
    );

    expect(model.city, contains('brasilia'));
    expect(model.description, 'description');
    expect(model.temperature, 'temperature');
    expect(model.wind, 'wind');
    expect(model.forecast[0].temperature, 'temperature');
    expect(model.forecast[0].wind, 'wind');
    expect(model.forecast[0].day, 'day');

    expect(copy.city, 'Curitiba');
    expect(copy.description, 'novo description');
    expect(copy.temperature, 'novo temperature');
    expect(copy.wind, 'novo wind');
    expect(copy.forecast[0].temperature, 'novo temperature');
    expect(copy.forecast[0].wind, 'novo wind');
    expect(copy.forecast[0].day, 'novo day');
  });
}
