import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:profectus/app/data/model/cidades_model.dart';
import 'package:profectus/app/data/model/estados_model.dart';

const baseUrl = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados';

class IBGEClient {
  final http.Client httpClient;
  IBGEClient({@required this.httpClient});

  getEstados() async {
    try {
      var response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        return estadosFromJson(response.body);
      } else
        print('erro -get');
    } catch (_) {
      return 'erro';
    }
  }

  getCidades(estado) async {
    try {
      var response =
          await httpClient.get('$baseUrl/${estado.sigla}/municipios');
      if (response.statusCode == 200) {
        return cidadesFromJson(response.body);
      } else
        print('erro -get');
    } catch (_) {
      return 'erro';
    }
  }
}
