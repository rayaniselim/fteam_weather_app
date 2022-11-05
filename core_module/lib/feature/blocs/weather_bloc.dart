import 'dart:async';

import '../../core_module.dart';
import '../data/repositories/weather_repository.dart';
import 'weather_eventy.dart';
import 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  // final _weatherRepo = WeatherRepository();

  // final StreamController<WeatherEvent> _inputWeatherController =
  //     StreamController<WeatherEvent>();
  // final StreamController<WeatherState> _outputWeatherController =
  //     StreamController<WeatherState>();

  // Sink<WeatherEvent> get inputWeather => _inputWeatherController.sink;
  // @override
  // Stream<WeatherState> get stream => _outputWeatherController.stream;

  WeatherBloc() : super(WeatherInitialState()) {
    //   _inputWeatherController.stream.listen(_mapEventToState); //
    //   on<LoadWeathersEvent>(
    //     (event, emit) => emit(
    //       WeatherSuccessState(
    //         weather: _weatherRepo.loadWeathers(),
    //       ),
    //     ),
    //   );

    //   // on<AddWeatherEvent>(
    //   //   (event, emit) => emit(
    //   //       WeatherSuccessState(weather: _weatherRepo.addWeather(event.weather))),
    //   // );
  }

  // _mapEventToState(WeatherEvent event) {
  //   List<WeatherRepository> weathers = [];
  //   if (event is LoadWeathersEvent) {
  //     weathers = _weatherRepo.loadWeathers();
  //   }
  //   // else if (event is AddWeatherEvent) {
  //   //   weathers = _weatherRepo.addWeather(event.weather);
  //   // }
  //   _outputWeatherController.add(
  //     WeatherSuccessState(weather: weathers),
  //   );
  // }
}
