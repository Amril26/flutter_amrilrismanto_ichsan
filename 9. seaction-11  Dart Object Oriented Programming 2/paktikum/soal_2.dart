void main(List<String> args) {
  int x = 2;
  int y = 4;
  int xx = 12;
  int yy = 20;

  KPT hasilKPT = KPT(x: x, y: y);
  final resultKPT = hasilKPT.hasil();
  print(resultKPT);

  FPT hasilFPT = FPT(x: xx, y: yy);
  final resultFPT = hasilFPT.hasil();
  print(resultFPT);
}

class FPT extends Matematika {
  final int x, y;
  FPT({required this.x, required this.y});

  int result = 0;
  @override
  hasil() {
    while (result % y != 0) {
      result -= x;
    }
    return 'hasil FPT dari $x dan $y adalah => $result';
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
