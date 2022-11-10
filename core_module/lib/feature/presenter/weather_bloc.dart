import 'dart:async';

import '../../core_module.dart';
import '../data/repositories/weather_repository.dart';

const baseUrl = 'https://goweather.herokuapp.com/weather/';
final String city = city;

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepo;

  WeatherBloc({required this.weatherRepo})
      : super(const WeatherInitialState()) {
    //mapea cada evento em relacao ao state
    on<SearchWeatherEvent>(
      (event, emit) async => _searchWeather(event, emit),
    );
  }

  Future<void> _searchWeather(
    SearchWeatherEvent event,
    Emitter<WeatherState> emit,
  ) async {
    final WeatherModel? model = await weatherRepo.searchWeather(
      city: event.city,
    );
    if (model == null) {
      const errorState = WeatherErrorState(
        message: 'Não foi possível carregar os dados.',
      );
      emit(errorState);
    } else {
      final successState = WeatherSuccessState(weather: model);
      emit(successState);
    }
  }

// TODO: ajustar os outros eventos como o exemplo linha 19.
  /// mapeaçao dos eventos
  // Future<void> _mapEventToState(WeatherEvent event) async {
  //   late WeatherState state;
  //   WeatherModel? weathers;
  //   if (event is SearchWeathersEvent) {
  //     weathers = await _weatherRepo.loadWeather(
  //       baseUrl: baseUrl,
  //       city: city,
  //     );
  //   }
  //   if (event is WeatherFetchList) {
  //     state = await _fetchList();
  //   }
  //   // if (event is WeatherFetchListWithError) {
  //   //   state = await _fetchListWithError();
  //   // }
  //   _outputWeatherController.add(
  //     WeatherSuccessState(weather: weathers),
  //   );
  // }

  Future<WeatherState> _fetchList() async {
    // Funcao - fora da classe, método dentro
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
}
