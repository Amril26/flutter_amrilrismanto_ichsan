import 'dart:io';

import 'package:flutter/material.dart';
import 'package:praktikum/providers/picker_file_provider.dart';
import 'package:provider/provider.dart';

class DetailPostPage extends StatelessWidget {
  static String rootNamed = '/detail-page';
  const DetailPostPage({Key? key}) : super(key: key);

  _appBar(BuildContext context) {
    return AppBar(
      title: const Text('Preview Post'),
      backgroundColor: context.read<PickerProvider>().valueColorPicker,
    );
  }

  Widget _bodyContent(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.3,
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            // color: Colors.red,
            image: DecorationImage(
                image: FileImage(
                    File('${context.read<PickerProvider>().pathFile}')),
                fit: BoxFit.fill),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                'Published ${context.read<PickerProvider>().datePicker}',
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey),
              ),
              const Spacer(),
              const Text(
                'Color',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                minRadius: 15,
                backgroundColor:
                    context.read<PickerProvider>().valueColorPicker,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Text(
            '${context.read<PickerProvider>().description}',
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _bodyContent(context),
    );
  }
}
