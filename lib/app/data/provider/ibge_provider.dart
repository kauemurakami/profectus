import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:profectus/app/data/model/CEP_model.dart';
import 'package:profectus/app/data/model/estados_model.dart';
import 'package:profectus/app/data/model/municipio.dart';

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

  getMunicipo(nibge) async {
    try {
      var response = await httpClient.get('$baseUrl/municipios/$nibge');
      if (response.statusCode == 200) {
        return Municipio.fromJson(json.decode(response.body));
      } else
        print('erro -get');
    } catch (_) {
      return 'erro';
    }
  }

  getCep(cep) async {
    try {
      var response =
          await httpClient.get('https://viacep.com.br/ws/$cep/json/');
      if (response.statusCode == 200) {
        return CEP.fromJson(json.decode(response.body));
      } else
        print('erro -get cep');
    } catch (_) {
      return 'erro get cep';
    }
  }
}
