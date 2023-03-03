import 'dart:io';

import 'package:fuction_dart_imc_01/fibonacci.dart';
import 'package:fuction_dart_imc_01/imc.dart';
import 'package:fuction_dart_imc_01/rule_of_3.dart';

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
