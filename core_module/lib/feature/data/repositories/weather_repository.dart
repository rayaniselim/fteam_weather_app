// ignore_for_file: avoid_print
import 'package:core_module/core_module.dart';
import 'package:core_module/feature/data/repositories/i_weather_repository.dart';

/// eu injeto a minha dependencia pelo construtor,
/// o controle agora está na hora de quem invoca o
class WeatherRepository implements IWeatherRepository {
  @override

  /// injeção via construtor
  final WeatherDatasource datasource;

  const WeatherRepository({required this.datasource});

  /// uma função assíncrona que retorna um Future de WeatherModel
  /// Recebe como parâmetro obrigatório uma String chamada city, representa a cidade
  @override
  Future<WeatherModel?> searchWeather({
    required String city, // parâmetro obrigatório
  }) async {
    final data = await datasource.remoteSearchWeather(
      /// faz uma solicitação à API externa para buscar dados meteorológicos remotos.
      city: city, // argumento
    );

    if (data != null) {
      /// cria um objeto WeatherModel usando o método estático fromMap
      final weather = WeatherModel.fromMap(data);

      /// converte os dados recebidos em um objeto WeatherModel.
      final weatherWithCity = weather.copyWith(city: city);

      /// copywith cria um novo objeto

      return weatherWithCity;
    } else {
      print('Erro ao chamar searchWeather no repository');
    }

    return null;
  }
}

/*
Ele encapsula a lógica de busca e transformação dos dados da fonte em um objeto
WeatherModel, retornando esse objeto se os dados forem obtidos com sucesso,
ou null em caso de falha ou ausência de dados.
*/
