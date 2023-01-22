abstract class Pessoa {
   String _nome ="";
  double _peso = 0;
  double _altura =0;

  Pessoa(String nome, double peso, double altura){
    _nome=nome;
    _peso=peso;
    _altura=altura;
  }
  void setNome(nome){
    nome =_nome;
  }
  void setPeso(peso){
    peso = _peso;
  }
  void setAltura(altura){
    altura = _altura;
  }
  String getNome(){
    return _nome.toUpperCase();
  }

  double getPeso(){
    return _peso;
  }
  double getAltura(){
    return _altura;
  }
  @override
  String toString() {
    // TODO: implement toString
    return {
      "Nome":_nome,
      "Peso":_peso,
      "Altura":_altura,
    }.toString();
  }

}