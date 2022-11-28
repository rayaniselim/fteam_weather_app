/// Configurado apenas o necessário para funcionar o http.get(),

class CustomResponse {
  final dynamic data;
  final int? statusCode;
  final String? statusMessage;

  CustomResponse({
    required this.data,
    this.statusCode,
    this.statusMessage,
  });
}
