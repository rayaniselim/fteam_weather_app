import 'package:core_module/core_module.dart';

abstract class IHttpClient {
  Future<CustomResponse> get({
    required String baseUrl,
    required String path,
  });
}
