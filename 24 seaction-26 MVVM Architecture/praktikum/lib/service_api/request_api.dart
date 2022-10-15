import 'package:dio/dio.dart';
import 'package:praktikum/helper/url.dart';

class RequestApi {
  final Dio _dio = Dio();

  get({required String url}) async {
    try {
      final fullUrl = BaseUrl.baseurl + url;
      final response = await _dio.get(fullUrl);
      return response.data;
    } catch (e) {
      throw 'Error Service Get Data $e';
    }
  }

  post({required String url, required Map<String, dynamic> dataBody}) async {
    try {
      final fullUrl = BaseUrl.baseurl + url;
      final response = _dio.post(fullUrl, data: dataBody);
      return response;
    } catch (e) {
      throw 'Error request Service Post : $e';
    }
  }

  put({required String url, required Map<String, dynamic> dataBody}) {
    try {
      final fullUrl = BaseUrl.baseurl + url;
      final response = _dio.put(fullUrl, data: dataBody);
      return response;
    } catch (e) {
      throw 'Error request Service Put : $e';
    }
  }

  delete({required String url}) {
    try {
      final fullUrl = BaseUrl.baseurl + url;
      final response = _dio.delete(fullUrl);
      return response;
    } catch (e) {
      throw 'Error request Service Put : $e';
    }
  }
}
