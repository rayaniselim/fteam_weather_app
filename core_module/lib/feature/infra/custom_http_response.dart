/// Configurado apenas o necessário para funcionar o http.get(),

class CustomHttpResponse {
  final dynamic data;
  final int? statusCode;
  final String? statusMessage;

  CustomHttpResponse({
    required this.data,
    this.statusCode,
    this.statusMessage,
  });
}
