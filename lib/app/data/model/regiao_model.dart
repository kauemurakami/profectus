class RegiaoModel {
  int id;
  String nome;
  int pontuacao;

  RegiaoModel({this.id, this.nome, this.pontuacao});

  RegiaoModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.nome = json['nome'];
    this.pontuacao = json['pontuacao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['id'] = this.id;
    data['pontuacao'] = this.pontuacao;
    return data;
  }
}
