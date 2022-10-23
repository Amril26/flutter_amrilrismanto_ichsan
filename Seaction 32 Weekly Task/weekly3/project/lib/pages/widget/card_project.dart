import 'package:flutter/material.dart';
import 'package:project/helper/themes.dart';

class CardProject extends StatelessWidget {
  final int index;
  const CardProject({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
            fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'Hallo Project ${index + 1}',
                style: h1.copyWith(color: Colors.white),
              )),
            ],
          ),
          const Spacer(),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
            style: h1.copyWith(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
