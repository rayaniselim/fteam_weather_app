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
      (event, emit) async => _searchWeatherEvent(event, emit),
    );
  }

  Future<void> _searchWeatherEvent(
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
}
