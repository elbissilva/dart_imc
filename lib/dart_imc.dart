import 'dart:convert';
import 'dart:io';




void runAapp() {
  print("Bem vindo à caluculadora de IMC");
  var nome = lerConsole("Informe seu nome");

  var altura = lerConsoleDouble("Informe sua altura");

  var peso = lerConsoleDouble("Informe seu peso");
  imcCalc(peso, altura);
  

   
  if (imcCalc(peso, altura) < 16) {
    print("$nome Você está abaixo do peso com imc de: ${imcCalc(peso, altura).toStringAsFixed(2)}, considerado MAGREZA GRAVE!");

  } else if (imcCalc(peso, altura)> 16 && imcCalc(peso, altura) <=17) {
      print("$nome Você está abaixo do peso com imc de: ${imcCalc(peso, altura).toStringAsFixed(2)} considerado 'MAGREZA MODERADA");

  } else if (imcCalc(peso, altura) >17 && imcCalc(peso, altura) <18.5){
      print("$nome Você está abaixo do peso com imc de:  ${imcCalc(peso, altura).toStringAsFixed(2)}considerado 'MAGREZA LEVE");

  } else if (imcCalc(peso, altura) >18.5 && imcCalc(peso, altura) <25){
      print("$nome Você está com peso normal,  e o imc de  ${imcCalc(peso, altura).toStringAsFixed(2)} Considerado 'SAUDÁVEL");

  } else if (imcCalc(peso, altura) >25.0 && imcCalc(peso, altura) <29.9){
      print("$nome Você está acima do peso, com o imc de  ${imcCalc(peso, altura).toStringAsFixed(2)} considerado 'SOBREPESO");

  } else if (imcCalc(peso, altura) >= 30.0 && imcCalc(peso, altura)<= 34.9 ){
      print("$nome Você está acima do peso, com imc de  ${imcCalc(peso, altura).toStringAsFixed(2)} considerado 'OBESIDADE GRAU I");

  } else if (imcCalc(peso, altura) >= 35.0 && imcCalc(peso, altura)<= 39.9 ){
      print("$nome Você está acima do peso, com imc de  ${imcCalc(peso, altura).toStringAsFixed(2)} considerado 'OBESIDADE GRAU II(SEVERA)");

  } else if (imcCalc(peso, altura) >= 40 ){
      print("$nome Você está acima do peso, com imc de  ${imcCalc(peso, altura).toStringAsFixed(2)} considerado 'OBESIDADE GRAU III(MÓRBIDA)");
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
double imcCalc(double peso, double altura){
  var imc = peso /(altura*altura);
  return imc;
}