class UserModel {

  int cpf; //identificador
  String name;
  String email;
  String senha;
  String idade; // idade
  String condicaoSocio; // baixa, media, alta
  String trabalha; // sim  nao
  String freqSaidas; // sim nao as vezes
  String contatoComInfect; //sim nao talvez
  String escolaridade;

  UserModel({this.name, this.condicaoSocio, this.contatoComInfect, this.cpf, this.escolaridade, this.freqSaidas, this.idade, this.sexo, this.trabalha });

  UserModel.fromJson(Map<String, dynamic> json){
      this.cpf = json['cpf'];
      this.name = json['name'];
      this.email = json['email'];
      this.senha = json['senha'];
      this.idade = json['idade'];
      this.condicaoSocio = json['condicaoSocio'];
      this.trabalha = json['trabalha'];
      this.freqSaidas = json['freqSaidas'];
      this.contatoComInfect = json['contatoComInfect'];
      this.escolaridade = json['escolaridade'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['cpf'] = this.cpf;
    data['idade'] = this.idade;
    data['condicaoSocio'] = this.condicaoSocio;
    data['freqSaidas'] = this.freqSaidas;
    data['contatoComInfect'] = this.contatoComInfect;
    data['escolaridade'] = this.escolaridade;
    return data;
  }
}