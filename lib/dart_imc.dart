import 'dart:convert';
import 'dart:io';

import 'package:dart_imc/pessoa.dart';
import 'package:dart_imc/utilidade_console.dart';

void runAapp() {
  print("Bem vindo à caluculadora de IMC");
  String nome = UtilidadeConsole.lerStringComTexto("Digite seu nome:");
  

  
  double altura = UtilidadeConsole.lerConsoleDooble("Digite sua altura");

  double peso = UtilidadeConsole.lerConsoleDooble("Digite seu peso");

  double idade = UtilidadeConsole.lerConsoleDooble("Digite sua idade");

  double resultado = peso/(altura*altura);
  print(nome);
  print(altura);
  print(peso);
  print(idade);
  

  print("O seu IMC é de $resultado");


}

