import 'dart:convert';
import 'dart:io';
import 'package:dart_imc/pessoa.dart';
import 'paciente.dart';



void runAapp() {
  print("Bem vindo à caluculadora de IMC");
  var  nome = lerConsole("Informe seu nome");

  var altura = lerConsoleDouble("Informe sua altura");

  var peso = lerConsoleDouble("Informe seu peso");
  
  double imc = peso/(altura*altura);
  
  var p1 =  Paciente(nome, peso, altura, imc);
  
  if (imc<16){
    print("$p1 abaixo do peso, conciderado 'MAGREZA GRAVE'. ");
  } else if(imc < 17){
    print("$p1 abaixo do peso, conciderado 'MAGREZA MODERADA'.");
  } else if(imc < 18.5){
    print("$p1 abaixo do peso, conciderado 'MAGREZA LEVE'.");
  } else if(imc < 25){
    print("$p1 peso norma e, conciderado 'SALDÁVEL'.");
  } else if(imc < 30){
    print("$p1 acimca do peso, conciderado 'SOBREPESO'. ");
  }else if(imc <35){
    print("$p1 acima do peso, conciderado 'OBESIDADE GRU I'.");
  } else if (imc< 40){
    print("$p1 acima do peso, conciderado 'OBESIDADE GRAU II'.");
  } else if(imc>= 40){
    print("$p1 acima do peso, conciderado 'MAGREZA GRAVE ");
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
double icmCalc(double peso, double altura){
  var imc = peso/(altura*altura);
  imc.toStringAsFixed(2);
  return double.parse(imc.toStringAsFixed(2));
  
}