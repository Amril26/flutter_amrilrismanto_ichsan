import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({Key? key, required this.urlImage}) : super(key: key);

  final String urlImage;

  _appBar() {
    return AppBar(
      backgroundColor: Color(0xFF607D8B),
      title: const Text('Detail Gambar'),
    );
  }

  _contentBody(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blueGrey, width: 5),
          image:
              DecorationImage(image: NetworkImage(urlImage), fit: BoxFit.fill),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _contentBody(context),
    );
  }
}
