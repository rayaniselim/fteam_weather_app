import '../data/models/weather_model.dart';

// o que o Bloc vai gerenciar - o estado do Weather
abstract class WeatherState {
  List<WeatherModel> weathers =
      []; // vai  ser carregado a lista de Weather genérico

  WeatherState({
    required this.weathers,
  });
}

class WeatherInitialState extends WeatherState {
  WeatherInitialState()
      : super(weathers: []); // estado inicial, passando uma lista/array vazio
}

class WeatherSuccessState extends WeatherState {
  WeatherSuccessState({
    required List<WeatherModel> weather, // recebe o List como padrao
  }) : super(weathers: weather); // na classe super carrega o state
}
