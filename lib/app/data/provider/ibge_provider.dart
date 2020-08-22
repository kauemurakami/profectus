import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:profectus/app/data/model/cidades_model.dart';
import 'package:profectus/app/data/model/estados_model.dart';

const baseUrl = 'https://servicodados.ibge.gov.br/api/v1/localidades';

class IBGEClient {
  final http.Client httpClient;
  IBGEClient({@required this.httpClient});

  getEstados() async {
    try {
      var response = await httpClient.get('$baseUrl/estados');
      if (response.statusCode == 200) {
        return estadosFromJson(response.body);
      } else
        print('erro -get');
    } catch (_) {
      return 'erro';
    }
  }

  getCidades(nibge) async {
    try {
      var response = await httpClient.get('$baseUrl/municipios/$nibge');
      if (response.statusCode == 200) {
        return cidadesFromJson(response.body);
      } else
        print('erro -get');
    } catch (_) {
      return 'erro';
    }
  }

  getCep(cep) async {
    try {
      var response = await httpClient.get('');
      if (response.statusCode == 200) {
        return cidadesFromJson(response.body);
      } else
        print('erro -get');
    } catch (_) {
      return 'erro';
    }
  }

  getRegiao(nibge) async {}
}
