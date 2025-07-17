import 'package:demo/environment/env.dart';
import 'package:dio/dio.dart';

import '../../environment/env.config.dart';

class ApiSource {
  final Dio dio = Dio(BaseOptions(baseUrl: Env.config.baseUrl));

  Future<Response> fetch(String endpoint,
      {Map<String, dynamic>? query, Map<String, dynamic>? headers}) async {
    try {
      return await dio.get(
        endpoint,
        queryParameters: query,
        options: Options(headers: headers),
      );
    } catch (e) {
      print("Fetch error: $e");
      rethrow;
    }
  }
}
