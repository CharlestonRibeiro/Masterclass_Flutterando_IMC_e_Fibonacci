import 'dart:io';

class IMC {
  double? imc;
  double? weight;
  double? height;

  void calculationIMC(){
     
     print('Funcão IMC');
     print('');
     print('Qual o seu peso?');
     weight = double.parse(stdin.readLineSync()!);
     print('Qual  sua altura?');
     height = double.parse(stdin.readLineSync()!);

     imc = weight! / (height! * height! );

     print('*' * 30); 
     print('Resultado:'); 

     if(imc! < 18.5){
       print('Abaixo do peso');
     } else if(imc! < 24.9){
       print('Peso normal');
     }else if(imc! < 29.9){
       print('Acima do peso (sobrepeso)');
     }else if(imc! < 34.9){
       print('Obesidade I');
     }else if(imc! < 39.9){
       print('Obesidade II');
     }else {
       print('Obesidade III');
     }

     print('*' * 30); 
     print(''); 
  }

 

}
