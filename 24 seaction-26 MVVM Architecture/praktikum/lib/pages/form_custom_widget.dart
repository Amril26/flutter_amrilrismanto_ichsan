import 'package:flutter/material.dart';

class FormRegisterCustom extends StatelessWidget {
  final TextEditingController controller;
  final String title, hintText;
  final bool obsucreText;
  final GlobalKey globalKey;
  final TextInputType inputType;
  const FormRegisterCustom(
      {Key? key,
      required this.controller,
      required this.title,
      required this.hintText,
      required this.obsucreText,
      required this.globalKey,
      required this.inputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black26),
        ),
        TextFormField(
          key: globalKey,
          controller: controller,
          obscureText: obsucreText,
          validator: (String? value) =>
              value != null || value != '' ? 'Harap isi bidang' : null,
          keyboardType: inputType,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
          ),
        )
      ],
    );
  }
}
