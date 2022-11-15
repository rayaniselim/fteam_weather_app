import 'package:core_module/core_module.dart';

class DioClientAdapter implements IHttpClient {
  final Dio dio;
  const DioClientAdapter(this.dio);

  @override
  Future<CustomResponse> get(
      {required String baseUrl, required String path}) async {
    final Response response = await dio.get(baseUrl + path);
    return CustomResponse(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }
}
