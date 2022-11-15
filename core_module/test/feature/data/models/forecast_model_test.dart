import 'package:core_module/core_module.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('A temperatura deve retornar da API asdasd434', () {
    /// Triple A
    /// Arrange
    final mockForecast = ForecastModel(
      temperature: '20',
      wind: '5km/h',
      day: '3',
    );

    ///Action
    final mockForecastToMap = mockForecast.toMap();

    ///Expect
    Map<String, dynamic> expectedMap = {
      'temperature': '20',
      'wind': '5km/h',
      'day': '3',
    };

    expect(mockForecast.toMap(), equals(expectedMap));
  });

  test('A temperatura deve retornar da API asdasd', () {
    // weatherActual.temperaturaIgualVinte();
    // temperaturaIgualVinte
    final forecastModel = ForecastModel(
      temperature: '20',
      wind: '5km/h',
      day: '3',
    );

    Map<String, dynamic> jsonMap = {
      'temperature': '20',
      'wind': '5km/h',
      'day': '3',
    };
    final response = ForecastModel.fromMap(jsonMap);

    expect(response, forecastModel);
  });
  testWidgets('forecast model ...', (tester) async {
// test('texto dizendo o que deve retornar ', () {

// arrange: organiza o teste, configura algumas coisas(mock), retornos de comportamentos

// actions:  chama os metodos que tem que executar (Açao)

// asserts: vai verificar se o teste está funcionando / respondendo da forma correta
// });}
  });
}
