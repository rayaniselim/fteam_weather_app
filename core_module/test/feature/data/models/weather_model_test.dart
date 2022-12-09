import 'package:core_module/core_module.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('fromMap() deve retornar um WeatherModel Válido', () {
    final model = WeatherModel.fromMap({
      'temperature': 'temperature',
      'wind': 'wind',
      'description': '',
      'forecast': [
        {
          'temperature': 'temperature',
          'wind': 'wind',
          'day': 'day',
        }
      ],
    });

    expect(model, isA<WeatherModel>());

    expect(model.city, null);
    // expect(model.temperature, contains('temperature'));
    expect(model.wind, isNotNull);
    // expect(model.description, isA<String>());
    expect(model.forecast, allOf([isNotNull, isA<List<ForecastModel>>()]));
  });

  test('toMap() deve retornar um Map<String, dynamic> Válido', () {
    const model = WeatherModel(
      city: 'city',
      description: 'description',
      temperature: 'temperature',
      wind: 'wind',
      forecast: [],
    );

    final json = model.toMap();

    expect(json['city'], null);
    expect(json['description'], model.description);
    expect(json['temperature'], model.temperature);
    expect(json['wind'], model.wind);
    expect(json['forecast'], allOf([model.forecast, isEmpty]));
  });

  test('deve retornar o WeatherModel dentro do copyWith()', () {
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

    final copy = model.copyWith(city: 'sao paulo');

    expect(copy.city, 'sao paulo');
    expect(copy.description, 'description');
    expect(copy.temperature, 'temperature');
    expect(copy.wind, 'wind');
    expect(copy.forecast[0].temperature, 'temperature');
    expect(copy.forecast[0].wind, 'wind');
    expect(copy.forecast[0].day, 'day');
    expect(copy, isA<WeatherModel>());
  });
}
