import 'package:core_module/core_module.dart';

class DioHttpClient implements IHttpClient {
  final Dio dio;

  const DioHttpClient(this.dio);

  @override
  Future<CustomHttpResponse> get({
    required String baseUrl,
    required String path,
  }) async {
    final response = await dio.get(baseUrl + path);
    final customHttpResponse = CustomHttpResponse(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );

    try {
      customHttpResponse;
    } catch (e) {
      throw Exception('O servidor está fora do ar');
    }
    return customHttpResponse;
  }
}
