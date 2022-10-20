// import 'dart:core';

// import 'package:core_module/feature/data/http_service/http_client.dart';

// import '../../../../core_module.dart';

// // TODO: ARRUMAR 
// class HttpImplements implements HttpClient {
//   final Dio dio;

//   HttpImplements(this.dio);

//   @override
//   Future<Map<String, dynamic>> httpPath({
//     required String path,
//   }) async {
//     try {
//       final response = await dio.get(path);
//       final value = response.data;
//       return value;
//     } 
//     on DioError catch (error, stackTrace) {
//       if () {
// DioErrorType.other;
//       } else if (){
        
//       }
//     }
//     throw HttpClientError(); // ARRUMAR classe separada
//   }
// }
