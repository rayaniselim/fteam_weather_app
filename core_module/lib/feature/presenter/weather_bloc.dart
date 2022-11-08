import 'dart:async';
import '../../core_module.dart';
import '../data/repositories/weather_repository.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final _weatherRepo = WeatherRepository();

  final StreamController<WeatherEvent> _inputWeatherController =
      StreamController<WeatherEvent>();

  final StreamController<WeatherState> _outputWeatherController =
      StreamController<WeatherState>();

  // Sink<WeatherEvent> get inputWeather =>
  //     _inputWeatherController.sink; // entrada dos eventos
  // @override
  // Stream<WeatherState> get stream => _outputWeatherController.stream; // saida

  WeatherBloc() : super(WeatherInitialState()) {
    _inputWeatherController.stream
        .listen(_mapEventToState); //mapea cada evento em relacao ao state
    on<LoadWeathersEvent>(
      (event, emit) async => emit(
        WeatherSuccessState(
          weather: await _weatherRepo.loadWeathers(),
        ),
      ),
    );
  }

  /// mapeaçao dos eventos
  Future<void> _mapEventToState(WeatherEvent event) async {
    List<WeatherModel> weathers = [];
    if (event is LoadWeathersEvent) {
      weathers = await _weatherRepo.loadWeathers();
    }
    _outputWeatherController.add(
      WeatherSuccessState(weather: weathers),
    );
  }
}
