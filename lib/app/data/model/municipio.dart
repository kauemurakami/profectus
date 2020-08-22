class Municipio {
  int id;
  String nome;
  Microrregiao microrregiao;
  int pontuacao;

  Municipio({this.id, this.nome, this.microrregiao, this.pontuacao});

  Municipio.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    pontuacao = json['pontuacao'];
    microrregiao = json['microrregiao'] != null
        ? new Microrregiao.fromJson(json['microrregiao'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['pontuacao'] = this.pontuacao;
    if (this.microrregiao != null) {
      data['microrregiao'] = this.microrregiao.toJson();
    }
    return data;
  }
}

class Microrregiao {
  int id;
  String nome;
  Mesorregiao mesorregiao;

  Microrregiao({this.id, this.nome, this.mesorregiao});

  Microrregiao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    mesorregiao = json['mesorregiao'] != null
        ? new Mesorregiao.fromJson(json['mesorregiao'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    if (this.mesorregiao != null) {
      data['mesorregiao'] = this.mesorregiao.toJson();
    }
    return data;
  }
}

class Mesorregiao {
  int id;
  String nome;
  UF uF;

  Mesorregiao({this.id, this.nome, this.uF});

  Mesorregiao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    uF = json['UF'] != null ? new UF.fromJson(json['UF']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    if (this.uF != null) {
      data['UF'] = this.uF.toJson();
    }
    return data;
  }
}

class UF {
  int id;
  String sigla;
  String nome;
  Regiao regiao;

  UF({this.id, this.sigla, this.nome, this.regiao});

  UF.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sigla = json['sigla'];
    nome = json['nome'];
    regiao =
        json['regiao'] != null ? new Regiao.fromJson(json['regiao']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sigla'] = this.sigla;
    data['nome'] = this.nome;
    if (this.regiao != null) {
      data['regiao'] = this.regiao.toJson();
    }
    return data;
  }
}

class Regiao {
  int id;
  String sigla;
  String nome;

  Regiao({this.id, this.sigla, this.nome});

  Regiao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sigla = json['sigla'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sigla'] = this.sigla;
    data['nome'] = this.nome;
    return data;
  }
}
