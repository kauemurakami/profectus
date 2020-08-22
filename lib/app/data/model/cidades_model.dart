import 'dart:convert';

List<Cidade> cidadesFromJson(String str) =>
    List<Cidade>.from(json.decode(str).map((x) => Cidade.fromJson(x)));

String cidadesToJson(List<Cidade> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cidade {
  Cidade({
    this.id,
    this.nome,
    this.microrregiao,
  });

  int id;
  String nome;
  Microrregiao microrregiao;

  factory Cidade.fromJson(Map<String, dynamic> json) => Cidade(
        id: json["id"],
        nome: json["nome"],
        microrregiao: Microrregiao.fromJson(json["microrregiao"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "microrregiao": microrregiao.toJson(),
      };
}

class Microrregiao {
  Microrregiao({
    this.id,
    this.nome,
    this.mesorregiao,
  });

  int id;
  String nome;
  Mesorregiao mesorregiao;

  factory Microrregiao.fromJson(Map<String, dynamic> json) => Microrregiao(
        id: json["id"],
        nome: json["nome"],
        mesorregiao: Mesorregiao.fromJson(json["mesorregiao"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "mesorregiao": mesorregiao.toJson(),
      };
}

class Mesorregiao {
  Mesorregiao({
    this.id,
    this.nome,
    this.uf,
  });

  int id;
  String nome;
  Uf uf;

  factory Mesorregiao.fromJson(Map<String, dynamic> json) => Mesorregiao(
        id: json["id"],
        nome: json["nome"],
        uf: Uf.fromJson(json["UF"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "UF": uf.toJson(),
      };
}

class Uf {
  Uf({
    this.id,
    this.sigla,
    this.nome,
    this.regiao,
  });

  int id;
  String sigla;
  String nome;
  Uf regiao;

  factory Uf.fromJson(Map<String, dynamic> json) => Uf(
        id: json["id"],
        sigla: json["sigla"],
        nome: json["nome"],
        regiao: json["regiao"] == null ? null : Uf.fromJson(json["regiao"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sigla": sigla,
        "nome": nome,
        "regiao": regiao == null ? null : regiao.toJson(),
      };
}
