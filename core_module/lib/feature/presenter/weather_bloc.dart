import 'dart:async';

import '../../core_module.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _weatherRepo;

  WeatherBloc({required WeatherRepository weatherRepo})
      : _weatherRepo = weatherRepo,
        super(const WeatherInitialState()) {
    //mapea cada evento em relacao ao state
    on<SearchWeatherEvent>(
      (event, emit) async => _searchWeatherEvent(event, emit),
    );
  }

  Future<void> _searchWeatherEvent(
    SearchWeatherEvent event,
    Emitter<WeatherState> emit,
  ) async {
    const loadingState = WeatherLoadingState();
    emit(loadingState);

    final model = await _weatherRepo.searchWeather(
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
}
