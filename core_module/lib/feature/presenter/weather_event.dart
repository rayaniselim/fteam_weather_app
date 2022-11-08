abstract class WeatherEvent {}

class LoadWeathersEvent extends WeatherEvent {
  String city; // recebe o WeatherModel por um evento,

  LoadWeathersEvent({
    required this.city,
  });
}
