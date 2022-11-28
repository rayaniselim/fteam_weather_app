class WeatherEvent {}

class WeatherFetchList extends WeatherEvent {}

class WeatherFetchListWithError extends WeatherEvent {}

class SearchWeatherEvent extends WeatherEvent {
  final String city;

  SearchWeatherEvent({required this.city});
}
