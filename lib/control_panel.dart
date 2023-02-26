import 'dart:io';

class ControlPanel {
  String menu = '''
            Painel de controle:
            1 - Funcão IMC;
            2 - Função Fibonacci;
            0 - sair
          ''';

  int? choice;

  void panel() {
    while (choice != 0) {
      print(menu);

      choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 0:
          print('.::FIM::.');
          break;

        case 1:
          print('Funcão IMC');
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
