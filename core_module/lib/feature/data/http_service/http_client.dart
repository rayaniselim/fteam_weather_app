abstract class HttpClient {
  Future<Map<String, dynamic>> httpPath({
    required String path,
  });
}


/// http : protocolo para transportar hipertextos 