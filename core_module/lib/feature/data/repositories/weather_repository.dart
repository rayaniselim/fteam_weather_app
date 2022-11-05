import '../datasources/weather_datasource.dart';
import '../models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel> getForecastData() async {
    final Map<String, dynamic> map = await WeatherDatasource().getWeatherData();

    return WeatherModel.fromMap(map);
  }

  // final List<WeatherRepository> _weathers = [];

  // List<WeatherRepository> loadWeathers() {
  //   _weathers.addAll([
  //     WeatherRepository(),
  //   ]);
  //   return _weathers;
  // }

  // List<WeatherRepository> addWeather(WeatherRepository weather) {
  //   _weathers.add(weather);
  //   return _weathers;
  // }

}

/// 1. cliente: http, firestore, hasura, google cloud...
/// 2. requests: post, put, get, delete > criar, atualizar, pegar, deletar
/// 3. referencia: endpoint da api: https://goweather.herokuapp.com/weather/curitiba
/// 4. objeto: dart, json, backend(java, js, C#...)
/// conclusao: pegar algo do servidor: http.get(https://goweather.herokuapp.com/weather/curitiba)
/// 