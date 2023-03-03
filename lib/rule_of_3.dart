import 'dart:io';

class RuleOf3 {
  double? _number1;
  double? _number2;
  double? _number3;
  double? _group1;
  double? _x;

  void rule() {
    print('Funcão Regra de 3');
    print('');
    print('Digite um número');
    _number1 = double.parse(stdin.readLineSync()!);
    print('Digite o segundo número');
    _number2 = double.parse(stdin.readLineSync()!);
    print('Digite o terceiro número');
    _number3 = double.parse(stdin.readLineSync()!);

    _group1 = _number1! * _number2!;

    _x = _group1! / _number3!;

    print('*' * 30);
    print('Resultado:');

    print(_x!.toStringAsFixed(0));

    print('*' * 30);
    print('');
  }
} 
