import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class SoalDua extends StatefulWidget {
  static String rootNamed = '/soal2';
  const SoalDua({Key? key}) : super(key: key);

  @override
  State<SoalDua> createState() => _SoalDuaState();
}

class _SoalDuaState extends State<SoalDua> {
  int currentIndexPage = 0;

  List<String> textBarcode = [
    'Alterra Academy',
    "Flutter Asik",
    "Amril Rismanto Ichsan",
  ];

  // List<Widget> _itemsPageView = [
  //   BarcodeWidget(
  //     barcode: Barcode.qrCode(),
  //     data: "Alterra Academy",
  //     width: 300,
  //     height: 300,
  //   ),
  //   BarcodeWidget(
  //     barcode: Barcode.qrCode(),
  //     data: "Flutter Asik",
  //     width: 300,
  //     height: 300,
  //   ),

  // ];

  AppBar _appBar() {
    return AppBar(
      title: const Text('Soal 2'),
    );
  }

  _bodyContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
          child: BarcodeWidget(
            barcode: Barcode.qrCode(),
            data: textBarcode[currentIndexPage],
            width: 300,
            height: 300,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                if (currentIndexPage != 0) {
                  setState(() {
                    currentIndexPage--;
                  });
                }
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
              ),
            ),
            Text(textBarcode[currentIndexPage]),
            IconButton(
              onPressed: () {
                if (currentIndexPage != textBarcode.length - 1) {
                  setState(() {
                    currentIndexPage++;
                  });
                }
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.blue,
              ),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _bodyContent(),
    );
  }
}
