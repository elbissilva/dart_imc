class Pessoa {
  String _nome ="";
  int _idade =0;
  double _peso = 0;
  double _altura =0;

  Pessoa(String nome, int idade, double peso, double altura){
    nome =_nome;
    idade = _idade;
    peso = _peso;
    altura = _altura;
  }
  void setNome(nome){
    nome =_nome;
  }
  void setIdade(idade){
    idade = _idade;
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
  int getIdade(){
    return _idade;
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
      "Idade":_idade,
      "Peso":_peso,
      "Altura":_altura,
    }.toString();
  }
}