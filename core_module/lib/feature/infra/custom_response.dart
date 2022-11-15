/// Configurado apenas o necessário para funcionar o http.get(),
/// http.post(),  http.put(),  http.delete()... não funcionarão!
class CustomResponse {
  final dynamic data;
  final int? statusCode;
  final String? statusMessage;

  const CustomResponse({
    required this.data,
    this.statusCode,
    this.statusMessage,
  });
}
