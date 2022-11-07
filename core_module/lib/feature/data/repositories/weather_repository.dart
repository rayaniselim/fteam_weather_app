import 'package:core_module/feature/data/models/forecast_model.dart';
import '../models/weather_model.dart';

class WeatherRepository {
  List<WeatherModel> _weathers = [];

  Future<List<WeatherModel>> loadWeathers() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    _weathers = const [
      WeatherModel(
        day: 'day',
        city: 'brasilia',
        description: 'descrip',
        temperature: '17',
        wind: '4 km/h',
        forecast: [
          ForecastModel(
            temperature: '19',
            wind: '15 km/h',
            day: '1',
          ),
          ForecastModel(
            temperature: '19',
            wind: '15 km/h',
            day: '1',
          ),
          ForecastModel(
            temperature: '19',
            wind: '15 km/h',
            day: '1',
          ),
          ForecastModel(
            temperature: '19',
            wind: '15 km/h',
            day: '1',
          ),
        ],
      ),
    ];
    return _weathers;
  }
}

/// 1. cliente: http, firestore, hasura, google cloud...
/// 2. requests: post, put, get, delete > criar, atualizar, pegar, deletar
/// 3. referencia: endpoint da api: https://goweather.herokuapp.com/weather/curitiba
/// 4. objeto: dart, json, backend(java, js, C#...)
/// conclusao: pegar algo do servidor: http.get(https://goweather.herokuapp.com/weather/curitiba)
/// 