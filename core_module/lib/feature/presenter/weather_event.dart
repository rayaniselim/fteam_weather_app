class WeatherEvent {
  const WeatherEvent();
}

class SearchWeatherEvent extends WeatherEvent {
  final String city;

  const SearchWeatherEvent({required this.city});
}
