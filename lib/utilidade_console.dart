import 'dart:convert';
import 'dart:io';

class UtilidadeConsole{
  static lerStringComTexto(String texto){
    print(texto);

    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static lerString(){
    return stdin.readLineSync(encoding: utf8) ?? "";
  }
  
  static lerConsoleDooble(String texto){
    return double.parse(lerDooble(texto));
  }
  static lerDooble(String texto){
    return stdin.readLineSync(encoding: utf8) ?? "";
  }



}