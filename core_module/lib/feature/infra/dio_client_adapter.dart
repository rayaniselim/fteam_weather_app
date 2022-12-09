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

    //TODO: Falta um try catch
    return CustomHttpResponse(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }
}
