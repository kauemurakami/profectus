class UserModel {

  int cpf; //identificador
  String name;
  String idade; // idade
  String sexo; // mas femin
  String faxaEtaria; // criança, adolescente, adulto, idoso
  String condicao; // baixa, media, alta
  bool trabalha; // sim  nao
  String freqSaida; // sim nao as vezes
  String contatoComInfect; //sim nao talvez

  UserModel({ id, name });

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