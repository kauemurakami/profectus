import 'package:get/get.dart';

class RxUserModel {
  final cpf = ''.obs; //identificador
  final name = ''.obs;
  final email = ''.obs;
  final senha = ''.obs;
  final idade = ''.obs; // idade
  final condicaoSocio = ''.obs; // baixa, media, alta
  final trabalha = ''.obs; // sim  nao
  final freqSaidas = ''.obs; // sim nao as vezes
  final contatoComInfect = ''.obs; //sim nao talvez
  final escolaridade = ''.obs;
  final problemas = ''.obs;
}

class UserModel {
  UserModel(
      {
        problemas,
      name,
      condicaoSocio,
      contatoComInfect,
      cpf,
      escolaridade,
      freqSaidas,
      idade,
      trabalha,
      email,
      senha});

  final rx = RxUserModel();

  get name => this.rx.name.value;
  set name(value) => this.rx.name.value = value;
  get probemas => this.rx.problemas.value;
  set problemas(value) => this.rx.problemas.value = value;
  get cpf => this.rx.cpf.value;
  set cpf(value) => this.rx.cpf.value = value;
  get email => this.rx.email.value;
  set email(value) => this.rx.email.value = value;
  get senha => this.rx.senha.value;
  set senha(value) => this.rx.senha.value = value;
  get idade => this.rx.idade.value;
  set idade(value) => this.rx.idade.value = value;
  get condicaoSocio => this.rx.condicaoSocio.value;
  set condicaoSocio(value) => this.rx.condicaoSocio.value = value;
  get trabalha => this.rx.trabalha.value;
  set trabalha(value) => this.rx.trabalha.value = value;
  get freqSaidas => this.rx.freqSaidas.value;
  set freqSaidas(value) => this.rx.freqSaidas.value = value;
  get contatoComInfect => this.rx.contatoComInfect.value;
  set contatoComInfect(value) => this.rx.contatoComInfect.value = value;
  get escolaridade => this.rx.escolaridade.value;
  set escolaridade(value) => this.rx.escolaridade.value = value;

  UserModel.fromJson(Map<String, dynamic> json) {
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

  Map<String, dynamic> toJson() {
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
