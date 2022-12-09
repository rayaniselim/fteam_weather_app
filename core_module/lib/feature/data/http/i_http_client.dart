import 'package:core_module/core_module.dart';

abstract class IHttpClient {
  Future<CustomHttpResponse> get({
    required String baseUrl,
    required String path,
  });
}
