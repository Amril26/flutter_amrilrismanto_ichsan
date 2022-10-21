import 'package:flutter/material.dart';
import 'package:praktikum/helper/url.dart';
import 'package:praktikum/models/users_models.dart';
import 'package:praktikum/service_api/request_api.dart';

class ServiceData extends ChangeNotifier {
  final RequestApi _requestApi = RequestApi();

  String _resultData = '';
  String get resultData => _resultData;

  List<UserModel> _listDataUser = [];
  List<UserModel> get listDataUser => _listDataUser;

  bool _showGet = false;
  bool get showGet => _showGet;

  bool _showPost = false;
  bool get showPost => _showPost;

  bool _showPut = false;
  bool get showPut => _showPut;

  bool _showDelete = false;
  bool get showDelete => _showDelete;

  Future getData() async {
    _listDataUser = [];
    final response = await _requestApi.get(url: BaseUrl.get);
    for (var item in response['data']) {
      _listDataUser.add(UserModel.fromJson(item));
    }

    _showGet = true;
    _showPost = false;
    _showPut = false;
    _showDelete = false;
    notifyListeners();
    return _listDataUser;
  }

  Future postData(BuildContext context,
      {required String name, required String job}) async {
    final Map<String, dynamic> dataBody = {
      'name': name,
      'job': job,
    };

    try {
      if (name != '' && job != '') {
        final response =
            await _requestApi.post(url: BaseUrl.post, dataBody: dataBody);
        _resultData = response.toString();
        _showGet = false;
        _showPost = true;
        _showPut = false;
        _showDelete = false;
      } else {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                'Gagal',
                style: TextStyle(color: Colors.white),
              )),
        );
      }
      // return response;
    } catch (e) {
      print('eroorrrrrr');
      return ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              'Gagal',
              style: TextStyle(color: Colors.white),
            )),
      );
    }
    notifyListeners();
  }

  Future updateData(BuildContext context,
      {required String name, required String job}) async {
    final Map<String, dynamic> dataBody = {
      'name': name,
      'job': job,
    };
    try {
      if (name != '' && job != '') {
        final response =
            await _requestApi.put(url: BaseUrl.put, dataBody: dataBody);
        _resultData = response.toString();
        _showGet = false;
        _showPost = false;
        _showPut = true;
        _showDelete = false;
      } else {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                'Gagal',
                style: TextStyle(color: Colors.white),
              )),
        );
      }
      // return response;
    } catch (e) {
      print('eroorrrrrr');
      return ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              'Gagal',
              style: TextStyle(color: Colors.white),
            )),
      );
    }
    notifyListeners();
  }

  Future deleteData() async {
    final response = await _requestApi.delete(url: BaseUrl.delete);
    _resultData = response.toString();
    _showGet = false;
    _showPost = false;
    _showPut = false;
    _showDelete = true;
    notifyListeners();
  }
}
