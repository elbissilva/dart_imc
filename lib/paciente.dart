import 'package:dart_imc/pessoa.dart';

class Paciente extends Pessoa{
  Paciente(String nome, int idade, double peso, double altura):super(nome, idade, peso, altura);
  @override
  String toString() {
    return{
      "Nome":super.getNome(),
      "Idade":super.getIdade(),
      "Peso": super.getPeso(),
      "Altura": super.getAltura()
    }.toString();
  }
}