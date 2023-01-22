import 'package:dart_imc/pessoa.dart';

class Paciente extends Pessoa{
  String _nome ="";
  double _peso = 0;
  double _altura =0;
  double _imc = 0.0 ;
  
  
  Paciente(String nome,double peso, double altura, double imc):super(nome, peso, altura){
    _nome = nome;
    _peso = peso;
    _altura = altura;
    _imc = imc;
  }

  void setImc(imc){
    imc = _imc; 
  }

  double getImc(){
    return _imc;
  }

  @override
  String toString() {
    return{
      "Nome":super.getNome(),
      "Peso": super.getPeso(),
      "Altura": super.getAltura(),
      "IMC":_imc.toStringAsFixed(2),
    }.toString();
  }
}