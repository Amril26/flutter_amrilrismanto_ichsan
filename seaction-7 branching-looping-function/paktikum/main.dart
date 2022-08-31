void main(List<String> args) {
  int value = 100;
  int faktorialSatu = 10;
  int faktorialDua = 20;
  int faktorialTiga = 30;
  // soal 1
  Condition exampleCondition = Condition();
  String result = exampleCondition.functionCondition(value);
  print('Nilai Anda Adalah : $result\n\n');

  // soal 2
  LoopingFactorial factorial = LoopingFactorial();

  print('hasil Faktorial 10  :  ${factorial.factorial(faktorialSatu)}');
  print('hasil Faktorial 20  :  ${factorial.factorial(faktorialDua)}');
  print('hasil Faktorial 30  :  ${factorial.factorial(faktorialTiga)}');
}

// soal pertama
class Condition {
  String functionCondition(int nilai) {
    if (nilai > 70) {
      return 'A';
    } else if (nilai > 40) {
      return 'B';
    } else if (nilai > 0) {
      return 'C';
    } else {
      return 'Kosong';
    }
  }
}

class LoopingFactorial {
  factorial(int value) {
    if (value <= 0) {
      print('bukan bilangan bulat');
    } else {
      double resultFaktorial = 1;
      for (var i = value; 1 <= i; i--) {
        resultFaktorial *= i;
        // print('$i =>>>>   $resultFaktorial');
      }
      return resultFaktorial;
    }
  }
}
