import 'package:core_module/core_module.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final weatherMatcher = WeatherModel(
    temperature: '20',
    wind: '',
    description: '',
    forecast: <ForecastModel>[],
  );

  final weatherActual = WeatherModel(
    temperature: '20',
    wind: '',
    description: '',
    forecast: <ForecastModel>[],
  );

  test('A temperatura deve retornar da API', () {
    // weatherActual.temperaturaIgualVinte();
    // temperaturaIgualVinte
    expect(weatherActual.temperaturaIgualVinte(), true);
    // expect(actual, matcher)
    // print(test );
  });

  testWidgets('weather model ...', (tester) async {
// test('texto dizendo o que deve retornar ', () {

// arrange: organiza o teste, configura algumas coisas(mock), retornos de comportamentos

// actions:  chama os metodos que tem que executar (Açao)

// asserts: vai verificar se o teste está funcionando / respondendo da forma correta
// });}
  });
}
