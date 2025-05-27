import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get(
      {required String endPoint,
      Map<String, dynamic> headers = const {}}) async {
    String baseUrl = '$endPoint';
    var response = await _dio.get(baseUrl, options: Options(headers: headers));
    print(baseUrl);
    return response.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoint,
      required Map<String, dynamic> body,
      Map<String, dynamic> headers = const {}}) async {
    var response = await _dio.post(endPoint,
        data: body, options: Options(headers: headers));
    print(response.data);
    print(body);
    return response.data;
  }
}
