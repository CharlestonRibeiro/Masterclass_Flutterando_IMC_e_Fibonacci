import 'dart:io';

import 'package:fuction_dart_imc_01/imc.dart';

class ControlPanel {
  String menu = '''
            Painel de controle:
            1 - Funcão IMC;
            2 - Função Fibonacci;
            0 - sair
          ''';

  int? choice;

  final imc = IMC();

  void panel() {
    while (choice != 0) {
      print(menu);

      choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 0:
          print('.::FIM::.');
          break;

        case 1:
          imc.calculationIMC();
          break;

        case 2:
          print('Função Fibonacci');
          break;

        default:
          print('Escolha invalida!');
          print('');
          break;
      }
    }
  }
}
