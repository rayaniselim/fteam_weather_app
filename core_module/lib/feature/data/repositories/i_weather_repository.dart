import '../datasources/weather_datasource.dart';
import '../models/weather_model.dart';

/// Um service para acesso de camadas externas,
/// responsável por todas as execuções que for de uma API externa.

abstract class IWeatherRepository {
  /// chama a minha API pelo atributo do datasource, a fonte de dados
  final WeatherDatasource datasource;

  /// construtor recebe o parametro
  const IWeatherRepository({required this.datasource});

  /// meu método é do tipo WeatherModel e vai retornar a cidade
  Future<WeatherModel?> searchWeather({
    required String city,
  });
}
