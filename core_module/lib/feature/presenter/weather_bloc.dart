import 'dart:async';
import '../../core_module.dart';
import '../data/repositories/weather_repository.dart';

const baseUrl = 'https://goweather.herokuapp.com/weather/';
const city = 'brasilia';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final _weatherRepo = WeatherRepository(client: DioClientAdapter());

  final StreamController<WeatherEvent> _inputWeatherController =
      StreamController<WeatherEvent>();

  final StreamController<WeatherState> _outputWeatherController =
      StreamController<WeatherState>();

  WeatherBloc() : super(const WeatherInitialState()) {
    _inputWeatherController.stream
        .listen(_mapEventToState); //mapea cada evento em relacao ao state
    on<LoadWeathersEvent>(
      (event, emit) async => emit(
        WeatherSuccessState(
          weather: await _weatherRepo.loadWeather(
            baseUrl: baseUrl,
            city: city,
          ),
        ),
      ),
    );
  }

  /// mapeaçao dos eventos
  Future<void> _mapEventToState(WeatherEvent event) async {
    late WeatherState state;
    WeatherModel? weathers;
    if (event is LoadWeathersEvent) {
      weathers = await _weatherRepo.loadWeather(
        baseUrl: baseUrl,
        city: city,
      );
    }
    if (event is WeatherFetchList) {
      state = await _fetchList();
    }
    if (event is WeatherFetchListWithError) {
      state = await _fetchListWithError();
    }
    _outputWeatherController.add(
      WeatherSuccessState(weather: weathers),
    );
  }
}

Future<WeatherState> _fetchList() async {
  // buscar lista
  await Future.delayed(
    const Duration(
      seconds: 2,
    ),
    () => <WeatherModel>[],
  );
  return const WeatherSuccessState(weather: null);
}

Future<WeatherState> _fetchListWithError() async {
  // erro na busca
  return await Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () => const WeatherErrorState(
          message: 'Não foi possível carregar os dados.'));
}
