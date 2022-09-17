import 'package:flutter/material.dart';
import 'package:praktikum/themes/theme.dart';

class CardItemChating extends StatelessWidget {
  const CardItemChating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
      ),
      title: Text(
        'Amril Rismanto Ichsan',
        style: h1.copyWith(color: Colors.black),
      ),
      subtitle: Text(
        'Amril Rismanto Ichsan',
        style: p1.copyWith(color: Colors.grey),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.done_all_rounded,
                size: 16,
                color: Colors.green,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '5:34 PM',
                style: p1.copyWith(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 6),
            height: 20,
            width: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: Text(
              '2',
              overflow: TextOverflow.fade,
              maxLines: 1,
              style: p1.copyWith(fontSize: 10, fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
