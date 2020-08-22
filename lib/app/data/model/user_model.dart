import 'package:get/get.dart';

class RxUserModel {
  final cpf = ''.obs; //identificador
  final name = ''.obs;
  final pontuacao = 0.obs;
  final email = ''.obs;
  final senha = ''.obs;
  final idade = ''.obs; // idade
  final condicaoSocio = ''.obs; // baixa, media, alta
  final trabalha = ''.obs; // sim  nao
  final freqSaidas = ''.obs; // sim nao as vezes
  final contatoComInfect = ''.obs; //sim nao talvez
  final problemas = ''.obs;
  final cep = ''.obs;
  final regiao = 0.obs;
  final municipio = 0.obs;
  final estado = 0.obs;
}

class UserModel {
  UserModel(
      {pontuacao,
      estado,
      regiao,
      municipio,
      problemas,
      name,
      condicaoSocio,
      contatoComInfect,
      cpf,
      cep,
      freqSaidas,
      idade,
      trabalha,
      email,
      senha});

  final rx = RxUserModel();

  get estado => this.rx.estado.value;
  set estado(value) => this.rx.estado.value = value;
  get regiao => this.rx.regiao.value;
  set regiao(value) => this.rx.regiao.value = value;
  get municipio => this.rx.municipio.value;
  set municipio(value) => this.rx.municipio.value = value;
  get cep => this.rx.cep.value;
  set cep(value) => this.rx.cep.value = value;
  get pontuacao => this.rx.pontuacao.value;
  set pontuacao(value) => this.rx.pontuacao.value = value;
  get name => this.rx.name.value;
  set name(value) => this.rx.name.value = value;
  get problemas => this.rx.problemas.value;
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
    this.cep = json['cep'];
    this.estado = json['estado'];
    this.regiao = json['regiao'];
    this.municipio = json['municipio'];
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
    data['cep'] = this.cep;
    data['pontuacao'] = this.pontuacao.toString();
    data['trabalha'] = this.trabalha;
    data['estado'] = this.estado;
    data['regiao'] = this.regiao;
    data['municipio'] = this.municipio;
    return data;
  }
}
