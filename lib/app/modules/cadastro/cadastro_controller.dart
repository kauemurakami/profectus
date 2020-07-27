import 'package:get/get.dart';
import 'package:meta/meta.dart';

class CadastroController extends GetxController {

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}