import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;

  ApiServices({required this.dio});
  Future<Map<String, dynamic>> get(String url) async {
    Response response = await dio.get(url);
    return response.data;
  }
}
