void main(List<String> args) {
  double x = 12;
  double y = 20;

  KPT hasilKPT = KPT(x: x, y: y);
  final resultKPT = hasilKPT.hasil();
  print(resultKPT);
}

class FPT extends Matematika {
  final double x, y;
  FPT({required this.x, required this.y});

  @override
  hasil() {}
}

class KPT extends Matematika {
  double x, y;
  KPT({required this.x, required this.y});

  @override
  hasil() {
    while (true) {
      x += x;
      // y += y;
      print(x);
      // if (x == y) {
      //   print(x);
      //   break;
      // }
    }
  }
}

abstract class Matematika {
  hasil() {
    print('taruh rumus disini ya');
  }
}
