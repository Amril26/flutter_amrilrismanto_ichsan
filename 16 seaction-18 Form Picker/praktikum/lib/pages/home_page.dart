import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:praktikum/pages/detail_page.dart';
import 'package:praktikum/providers/picker_file_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static String rootNamed = '/';
  HomePage({Key? key}) : super(key: key);
  Color _colorPicker = Colors.blue;
  final TextEditingController _controller = TextEditingController();

  _appBar() {
    return AppBar(
      title: const Text('Create Post'),
    );
  }

  Widget _drawerContent() {
    return const Drawer(
      backgroundColor: Colors.white,
    );
  }

  Widget _bodyContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const Text(
            'Cover',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF252525)),
          ),

          const SizedBox(
            height: 10,
          ),
          context.watch<PickerProvider>().pathFile != ''
              ? SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Image.file(
                      File('${context.watch<PickerProvider>().pathFile}')),
                )
              : const SizedBox(),
          const SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () async {
              await context.read<PickerProvider>().pickerPhoto();
            },
            child: const Text(
              'Pilih File',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            ),
          ),
          // note : Publish AT
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Publish At',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF252525)),
          ),
          OutlinedButton(
            onPressed: () async {
              final resultDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now().subtract(const Duration(days: 1000)),
                lastDate: DateTime.now().add(const Duration(days: 10)),
              );
              context
                  .read<PickerProvider>()
                  .dateAddFormat(datePicker: resultDate!);
            },
            child: Text(
              context.watch<PickerProvider>().datePicker == ''
                  ? 'Publish At'
                  : context.watch<PickerProvider>().datePicker,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF252525)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // NOTE : Color Theme
          const Text(
            'Color Theme',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF252525)),
          ),
          FlatButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => Dialog(
                        child: BlockPicker(
                          pickerColor: _colorPicker,
                          onColorChanged:
                              context.read<PickerProvider>().colorPicker,
                        ),
                      )
                  // {

                  );
            },
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: context.read<PickerProvider>().valueColorPicker)),
            child: Text(
              'Color Picker',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: context.read<PickerProvider>().valueColorPicker),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // NOTE: Caption
          const Text(
            'Caption',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF252525)),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _controller,
            maxLines: 5,
            decoration: InputDecoration(
              hintText: 'Input Caption',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          FlatButton(
            onPressed: () {
              context
                  .read<PickerProvider>()
                  .descriptionAdd(description: _controller.text);
              Navigator.pushNamed(context, DetailPostPage.rootNamed);
              // }
            },
            color: Colors.blue,
            child: const Text(
              'Simpan',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _appBar(),
      drawer: _drawerContent(),
      body: _bodyContent(context),
    );
  }
}
