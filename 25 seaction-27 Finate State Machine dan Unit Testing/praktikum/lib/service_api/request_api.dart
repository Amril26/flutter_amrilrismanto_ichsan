import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:praktikum/helper/url.dart';

import 'package:http/http.dart' as http;

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

Future<Album> fetchAlbum(http.Client client) async {
  final response = await client
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({required this.userId, required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
