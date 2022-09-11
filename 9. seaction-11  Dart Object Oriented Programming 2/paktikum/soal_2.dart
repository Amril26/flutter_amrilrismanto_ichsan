void main(List<String> args) {
  int x = 100;
  int y = 10;
  double xx = 125;
  double yy = 250;

  KPT hasilKPT = KPT(x: x, y: y);
  final resultKPT = hasilKPT.hasil();
  print(resultKPT);

  print('\n*****************************\n');

  FPT hasilFPT = FPT(x: xx, y: yy);
  final resultFPT = hasilFPT.hasil();
  print(resultFPT);
}

class FPT extends Matematika {
  double x, y;
  FPT({required this.x, required this.y});
  List listX = [];
  List listY = [];

  late double result;
  @override
  hasil() {
    result = x % y;
    while (result != 0) {
      x = y;
      y = result;
      result = x % y;
    }

    return 'hasil FPT dari $x dan $y adalah => $y';
  }
}

class KPT extends Matematika {
  int x, y;
  KPT({
    required this.x,
    required this.y,
  });
  int result = 0;

  @override
  hasil() {
    result = x;
    while (result % y != 0) {
      result += x;
    }
    return 'hasil KPT dari $x dan $y adalah => $result';
  }
}

abstract class Matematika {
  hasil() {
    print('taruh rumus disini ya');
  }
}
