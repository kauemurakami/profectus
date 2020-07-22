import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';

class DataProvider {

final http.Client httpClient;
DataProvider({@required this.httpClient});


}