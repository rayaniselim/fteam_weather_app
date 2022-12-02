import 'package:core_module/core_module.dart';

import 'package:mocktail/mocktail.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

class DioClientAdapterMock extends Mock implements DioClientAdapter {}

void main() {
  CustomResponse customResponse =
      CustomResponse(data: 'data', statusCode: 200, statusMessage: 'exito');
  WeatherDatasource datasource =
      WeatherDatasource(client: DioClientAdapter(Dio()));

  test('O remoteSearchWeather deve retornar null e um WeatherDatasource',
      () async {
    final remoteSearchWeather = await datasource.remoteSearchWeather(city: '');

    expect(remoteSearchWeather, null);
    expect(datasource, isA<WeatherDatasource>());
  });

  test('customResponse deve retornar o statusCode int?', () {
    final responseCode = customResponse.statusCode;
    expect(responseCode, isA<int?>());
    print(responseCode);
  });
}
