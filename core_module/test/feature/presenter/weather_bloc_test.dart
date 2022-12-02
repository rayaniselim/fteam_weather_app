import 'package:bloc_test/bloc_test.dart';
import 'package:core_module/feature/data/models/weather_model.dart';
import 'package:core_module/feature/presenter/weather_bloc.dart';
import 'package:core_module/feature/presenter/weather_event.dart';
import 'package:core_module/feature/presenter/weather_state.dart';

import 'package:mocktail/mocktail.dart';
import 'package:core_module/feature/data/repositories/weather_repository.dart'
    as weather_repository;
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

// / testa o WeatherRepository
class WeatherRepositoryMock extends Mock
    implements weather_repository.WeatherRepository {}

class WeatherModelMock extends Mock implements WeatherModel {}

void main() {
  late WeatherModel model;
  late WeatherBloc bloc;
  late weather_repository.WeatherRepository repository;

  setUp(() async {
    model = WeatherModelMock();
    repository = WeatherRepositoryMock();

    when(
      () => repository.searchWeather(city: 'Curitiba'),
    ).thenAnswer((_) async => model);
    bloc = WeatherBloc(weatherRepo: repository);
  });

  blocTest<WeatherBloc, WeatherState>(
    'Ele vai retornar o estado de sucesso',
    build: () => bloc,
    act: (bloc) => bloc.add(SearchWeatherEvent(city: 'Curitiba')),
    expect: () => [isA<WeatherSuccessState>()],
  );

  blocTest<WeatherBloc, WeatherState>(
    'emits [loading, failure] when getWeather throws',
    setUp: () {
      when(
        () => repository.searchWeather(city: ''),
      ).thenAnswer(((_) async => null));
    },
    build: () => bloc,
    act: (bloc) => bloc.add(SearchWeatherEvent(city: '')),
    expect: () => [isA<WeatherErrorState>()],
  );
}
