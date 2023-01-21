import 'dart:convert';
import 'dart:io';
import 'dart:svg';
import 'dart_imc.dart';



void runAapp() {
  print("Bem vindo à caluculadora de IMC");
  var nome = lerConsole("Informe seu nome");

  var altura = lerConsoleDouble("Informe sua altura");

  var peso = lerConsoleDouble("Informe seu peso");

  var imc = peso /( altura*altura);
  

   
  if (imc < 18.5) {
    print("$nome Você está abaixo do peso com o imc de $imc}");
  } else if (imc> 18.5 && imc <=24.9) {
      print("$nome Você está com o peso normal para sua altura, e seu imc é $imc");
  } else if (imc >25.0 && imc <29.9){
      print("$nome Você está com sobrepeso, com o imc de ${imc.}");
  } else if (imc >= 30.0 ){
      print("$nome Você está obeso, com imc de $imc");
  }
  
}

lerConsole(String texto){
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

lerConsoleDouble(String texto){
  var numero = double.tryParse(lerConsole(texto));
  if (numero == null) {
    print("Erro, número inválido");
    exit(0);
  } else {
    return numero;
  }

 
  
}
