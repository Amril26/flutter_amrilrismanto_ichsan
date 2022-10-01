import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final Random _random = Random();

  _appBar() {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      title: const Text('Gallery'),
      centerTitle: true,
    );
  }

  _cardImage(BuildContext context, {required String urlImage}) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Image.network(
                urlImage,
                height: 200,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        );
      },
      onDoubleTap: () {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
            backgroundColor: Colors.white,
            title: Text('Gallery'),
            content: SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    urlImage,
                    height: 200,
                    fit: BoxFit.fitWidth,
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Tutup',
                    style: TextStyle(
                        color: Colors.blueGrey, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(
            image: NetworkImage(urlImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  _bodyContent(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
      crossAxisCount: 3,
      children: List.generate(
          30,
          (index) => _cardImage(context,
              urlImage:
                  'https://picsum.photos/id/${index + _random.nextInt(50)}/200/300')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF252525),
      appBar: _appBar(),
      body: _bodyContent(context),
    );
  }
}
