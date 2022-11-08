import 'package:core_module/core_module.dart';

class DioClientAdapter implements IHttpClient {
  final _dio = Dio();
  @override
  Future<Response> get({required String baseUrl, required String path}) {
    return _dio.get(baseUrl + path);
  }
}
