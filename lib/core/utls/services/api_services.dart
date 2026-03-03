import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  final String url;

  ApiServices({required this.dio, required this.url});
  Future<Map<String, dynamic>> get(String url) async {
    Response response = await dio.get(url);
    return response.data;
  }
}
