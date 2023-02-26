import 'dart:io';

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
