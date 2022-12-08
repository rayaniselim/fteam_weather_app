import 'package:core_module/core_module.dart';

class DioHttpClient implements IHttpClient {
  final Dio dio;

  const DioHttpClient(this.dio);

  @override
  Future<CustomResponse> get({
    required String baseUrl,
    required String path,
  }) async {
    final Response response = await dio.get(baseUrl + path);
    // TODO Falta um try catch
    return CustomResponse(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }
}
