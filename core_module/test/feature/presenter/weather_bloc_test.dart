import 'package:bloc_test/bloc_test.dart';
import 'package:core_module/feature/data/models/weather_model.dart';
import 'package:core_module/feature/presenter/weather_bloc.dart';
import 'package:core_module/feature/presenter/weather_event.dart';
import 'package:core_module/feature/presenter/weather_state.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core_module/feature/data/repositories/weather_repository.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

// / testa o WeatherRepository
class WeatherRepositoryMock extends Mock implements WeatherRepository {}

class WeatherModelMock extends Mock implements WeatherModel {}

void main() {
  late WeatherModel model;
  late WeatherRepository repository;

  setUp(() async {
    model = WeatherModelMock();
    repository = WeatherRepositoryMock();
  });

  blocTest<WeatherBloc, WeatherState>(
    'Ele vai retornar o estado de sucesso',
    setUp: () {
      when(
        () => repository.searchWeather(city: 'Curitiba'),
      ).thenAnswer((_) async => model);
    },
    build: () {
      final bloc = WeatherBloc(weatherRepo: repository);
      return bloc;
    },
    act: (bloc) => bloc.add(SearchWeatherEvent(city: 'Curitiba')),
    expect: () => [isA<WeatherLoadingState>(), isA<WeatherSuccessState>()],
  );

  blocTest<WeatherBloc, WeatherState>(
    'Ele vai retornar o estado de erro',
    setUp: () {
      when(
        () => repository.searchWeather(city: ''),
      ).thenAnswer(((_) async => null));
    },
    build: () {
      final bloc = WeatherBloc(weatherRepo: repository);
      return bloc;
    },
    act: (bloc) => bloc.add(SearchWeatherEvent(city: '')),
    expect: () => [isA<WeatherLoadingState>(), isA<WeatherErrorState>()],
  );
}
