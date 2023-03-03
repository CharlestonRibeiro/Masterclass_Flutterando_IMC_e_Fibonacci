# Desafio Masterclass Flutterando IMC e fibonacci.

## DESAFIO MASTERCLASS

### IMC

O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
O calculo é representado por Dividir o peso pela Altura ao quadradro²

Cria uma função que realize o calculo de IMC.

```
class IMC {
  double? _imc;
  double? _weight;
  double? _height;

  void calculationIMC(){
     
     print('Funcão IMC');
     print('');
     print('Qual o seu peso?');
     _weight = double.parse(stdin.readLineSync()!);
     print('Qual  sua altura?');
     _height = double.parse(stdin.readLineSync()!);

     _imc = _weight! / (_height! * _height! );

     print('*' * 30); 
     print('Resultado:'); 

     if(_imc! < 18.5){
       print('Abaixo do peso');
     } else if(_imc! < 24.9){
       print('Peso normal');
     }else if(_imc! < 29.9){
       print('Acima do peso (sobrepeso)');
     }else if(_imc! < 34.9){
       print('Obesidade I');
     }else if(_imc! < 39.9){
       print('Obesidade II');
     }else {
       print('Obesidade III');
     }

     print('*' * 30); 
     print(''); 
  }
}
```

### Fibonacci 

Na matemática, a sucessão de Fibonacci (ou sequência de Fibonacci), é uma sequência de números inteiros, começando normalmente por 0 e 1, na qual cada termo subsequente corresponde à soma dos dois anteriores. A sequência recebeu o nome do matemático italiano Leonardo de Pisa, mais conhecido por Fibonacci, que descreveu, no ano de 1202, o crescimento de uma população de coelhos, a partir desta. Esta sequência já era, no entanto, conhecida na antiguidade.
Implemente a sequencia fibonacci com funcões recursivamente usando o Dart.

```
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
```

### Regra de 3

Função da regra de 3, levando em consideração que será considerado o argumento vazio como valor a ser encontrado, logo, poderá ter apenas um valor necessáriamente "vazio".

```
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
```

As soluções propostas são gerenciadas por uma classe que funciona como um painel de controle. 


```
class ControlPanel {
  final String _menu =
      '''
            Painel de controle:
            1 - Funcão IMC;
            2 - Função Fibonacci;
            3 - Função Regra de 3;
            0 - sair
          ''';

  int? _choice;

  final _imc = IMC();
  final _fibonacci = Fibonacci();
  final _roleOf3 = RuleOf3();

  void panel() {
    while (_choice != 0) {
      print(_menu);

      _choice = int.parse(stdin.readLineSync()!);

      switch (_choice) {
        case 0:
          print('.::FIM::.');
          break;

        case 1:
          _imc.calculationIMC();
          break;

        case 2:
          _fibonacci.calculationFibonacci();
          break;

        case 3:
          _roleOf3.rule();
          break;

        default:
          print('Escolha invalida!');
          print('');
          break;
      }
    }
  }
}
```


