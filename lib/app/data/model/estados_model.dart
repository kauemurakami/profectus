import 'dart:convert';

List<Estado> estadosFromJson(String str) =>
    List<Estado>.from(json.decode(str).map((x) => Estado.fromJson(x)));

String estadosToJson(List<Estado> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Estado {
  Estado({
    this.id,
    this.sigla,
    this.nome,
    this.regiao,
  });

  int id;
  String sigla;
  String nome;
  Estado regiao;

  factory Estado.fromJson(Map<String, dynamic> json) => Estado(
        id: json["id"],
        sigla: json["sigla"],
        nome: json["nome"],
        regiao: json["regiao"] == null ? null : Estado.fromJson(json["regiao"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sigla": sigla,
        "nome": nome,
        "regiao": regiao == null ? null : regiao.toJson(),
      };
}
