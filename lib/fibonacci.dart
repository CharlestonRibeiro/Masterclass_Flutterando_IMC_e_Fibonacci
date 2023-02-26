import 'dart:io';

class Fibonacci {
  int? _fn;
  int? _fnNumber;
  int? _f1;
  int? _f2;
  int? _result;
  final List _resultList = [1, 1];

  void calculationFibonacci() {
    print('Funcão Fibonacci');
    print('');
    print('Digite um numero de termos para o Fibonacci');
    _fnNumber = int.parse(stdin.readLineSync()!);

    print('*' * 30);
    print('Resultado de Fibonacci:');

    if (_fnNumber == 1) {
      print('[1]');
    } else if (_fnNumber == 2) {
      print('[1, 1]');
    } else {

      _fn = _fnNumber! - 2;

      for (int i = 0; i < _fn!; i++) {
        _f1 = _resultList[i];
        _f2 = _resultList[i + 1];

        _result = _f1! + _f2!;
        _resultList.add(_result);
      }
      print(_resultList);
    }

    print('*' * 30);
    print('');
  }
}
