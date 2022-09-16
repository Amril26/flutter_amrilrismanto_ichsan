import 'package:flutter/material.dart';
import 'package:praktikum/themes/theme.dart';

class MenuBtn extends StatelessWidget {
  final String btnTitle;
  final Function() onTap;
  final IconData icon;

  const MenuBtn(
      {Key? key,
      required this.btnTitle,
      required this.onTap,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        minLeadingWidth: 0,
        leading: Icon(icon),
        title: Text(
          btnTitle,
          style: h1.copyWith(
            color: Colors.grey[600],
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
