import 'dart:convert';

import 'package:core_module/feature/data/repositories/weather_repository.dart';
import 'package:http/http.dart' as http;

// TODO: ARRUMAR

Future<WeatherRepository> fetch() async {
  String city = 'curitiba';
  var url = 'https://goweather.herokuapp.com/weather/$city';
  var response = await http.get(Uri.parse(url));
  var json = jsonDecode(response.body);
  var weatherMap = WeatherRepository(); //(temperature: json['temperature'],);
  return weatherMap;
}

// void getHttp() async {
//   try {
//     var response = await Dio().get(
//       'https://goweather.herokuapp.com/weather/curitiba',
//     );
//     print(response.data.toString());
//     print(response);
//   } catch (e) {
//     print(e);
//   }
// }
