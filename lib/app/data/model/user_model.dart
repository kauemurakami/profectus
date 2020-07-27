class UserModel {

  int cpf; //identificador
  String name;
  String idade; // idade
  String sexo; // mas femin
  String condicaoSocio; // baixa, media, alta
  String trabalha; // sim  nao
  String freqSaidas; // sim nao as vezes
  String contatoComInfect; //sim nao talvez
  String escolaridade;

  UserModel({this.name, this.condicaoSocio, this.contatoComInfect, this.cpf, this.escolaridade, this.freqSaidas, this.idade, this.sexo, this.trabalha });

  UserModel.fromJson(Map<String, dynamic> json){
      this.cpf = json['cpf'];
      this.name = json['name'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}