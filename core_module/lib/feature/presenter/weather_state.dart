import 'package:core_module/core_module.dart';

// o que o Bloc vai gerenciar - o estado do Weather
abstract class WeatherState extends Equatable {
  final WeatherModel? weather; // vai  ser carregado a lista de Weather genérico

  const WeatherState({required this.weather});

  @override
  List<Object?> get props => [];
}

class WeatherInitialState extends WeatherState {
  const WeatherInitialState()
      : super(weather: null); // estado inicial, passando uma lista/array vazio
}

class WeatherSuccessState extends WeatherState {
  const WeatherSuccessState({
    required WeatherModel? weather, // recebe o List como padrao
  }) : super(weather: weather); // na classe super carrega o state
}

class WeatherErrorState extends WeatherState {
  final String message;

  const WeatherErrorState({
    required this.message,
  }) : super(
          weather: null,
        );
}
