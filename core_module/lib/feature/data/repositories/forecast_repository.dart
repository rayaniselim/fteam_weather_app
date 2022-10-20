import '../datasources/forecast_datasource.dart';
import '../models/forecast_model.dart';

class ForecastRepository {
  Future<ForecastModel> getForecastData() async {
    final Map<String, dynamic> forecastData =
        await ForecastDatasource().getWeatherData();

    return ForecastModel.fromMap(forecastData);
  }
}
