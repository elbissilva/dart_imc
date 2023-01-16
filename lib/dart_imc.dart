import 'dart:convert';
import 'dart:io';

import 'package:dart_imc/pessoa.dart';
import 'package:dart_imc/utilidade_console.dart';

void runAapp() {
  print("Bem vindo à caluculadora de IMC");
  print("Informe seu nome");
  var line = stdin.readLineSync(encoding: utf8);
  var nome = (line ?? "");
  print("Informe sua idade:");
  line = stdin.readLineSync(encoding:utf8);
  var idade = double.parse(line ?? "");
  print("Informe sua altura");
  line =  stdin.readLineSync(encoding:  utf8);
  var altura = double.parse(line ?? "");
  print("Informe seu peso");
  line = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line ?? "");

  var imc = peso /( altura*altura);
  print("Seu nome é $nome");
  print("Sua idade é $idade anos");
  print("O seu imc é de $imc");

  
}

