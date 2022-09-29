import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';

class PickerProvider extends ChangeNotifier {
  String _pathFile = '';
  String get pathFile => _pathFile;

  String _description = '';
  String get description => _description;

  String _datePicker = '';
  String get datePicker => _datePicker;

  Color _valueColorPicker = Colors.grey;
  Color get valueColorPicker => _valueColorPicker;

  dateAddFormat({required DateTime datePicker}) {
    if (datePicker != null) {
      _datePicker = datePicker.toString();
      print(_datePicker);
    }
    notifyListeners();
  }

  descriptionAdd({required String description}) {
    _description = description;
    notifyListeners();
  }

  colorPicker(Color color) {
    _valueColorPicker = color;
    notifyListeners();
  }

  pickerPhoto() async {
    PermissionStatus _statusMedia = await Permission.storage.status;
    final _file = await FilePicker.platform.pickFiles(type: FileType.image);
    if (_statusMedia == PermissionStatus.granted) {
      if (_file != null) {
        _pathFile = _file.paths[0].toString();
      }
    } else {
      _requestPermission();
    }
    notifyListeners();
  }

  _requestPermission() async {
    await Permission.storage.request().then(
          (value) => {
            if (value == PermissionStatus.denied)
              {
                Permission.storage.request(),
              }
            else if (value == PermissionStatus.permanentlyDenied)
              {
                print('cek pengaturan permiision pada aplikasi ini'),
              },
          },
        );
  }
}
