import 'package:flutter/material.dart';
import 'package:project/helper/themes.dart';

class FormCustomEdit extends StatelessWidget {
  const FormCustomEdit(
      {Key? key, required this.title, required this.controllerEditing})
      : super(key: key);
  final String title;
  final TextEditingController controllerEditing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0XFF252525),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
              color: colorPrimary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            controller: controllerEditing,
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              border: OutlineInputBorder(borderSide: BorderSide.none),
              focusColor: Colors.black38,
            ),
          ),
        )
      ],
    );
  }
}
