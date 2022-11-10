import 'package:core_module/core_module.dart';

abstract class IHttpClient {
  Future<Response> get({
    required String baseUrl,
    required String path,
  });
}

// TODO: criar classe para traducao da abstracao RESPONSE, ex: DioResponse