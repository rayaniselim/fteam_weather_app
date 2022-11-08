import 'package:core_module/core_module.dart';

abstract class WeatherEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class WeatherFetchList extends WeatherEvent {}

class WeatherFetchListWithError extends WeatherEvent {}

class LoadWeathersEvent extends WeatherEvent {
  final String city; // recebe o WeatherModel por um evento,

  LoadWeathersEvent({
    required this.city,
  });
}
