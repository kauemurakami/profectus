import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:profectus/app/data/model/estados_model.dart';
import 'package:profectus/app/data/model/municipio.dart';
import 'package:profectus/app/data/model/regiao_model.dart';
import 'package:profectus/app/data/model/user_model.dart';
import 'package:profectus/app/data/repository/user_repository.dart';

class HomeController extends GetxController {
  final UserRepository repository;
  HomeController({@required this.repository}) : assert(repository != null);

  final UserModel user = Get.arguments;

  final _regiao = RegiaoModel().obs;
  get regiao => this._regiao.value;
  set regiao(value) => this._regiao.value = value;

  final _estado = Estado().obs;
  get estado => this._estado.value;
  set estado(value) => this._estado.value = value;

  final _municipio = Municipio().obs;
  get municipio => this._municipio.value;
  set municipio(value) => this._municipio.value = value;

  getDados() async {
    await getEstado();
    await getRegiao();
    await getMunicipio();
    await getNacional();
  }

  getNacional() async {}

  @override
  void onInit() {
    this.getDados();
    super.onInit();
  }

  getEstado() async {
    await Firestore.instance
        .collection('estados')
        .document('${user.estado}')
        .get()
        .then((value) {
      estado = Estado.fromJson(value.data);
      print(value.data);
    });
    return this.estado.id.toString();
  }

  getRegiao() async {
    await Firestore.instance
        .collection('regioes')
        .document('${user.regiao}')
        .get()
        .then((value) {
      regiao = RegiaoModel.fromJson(value.data);
      print(value.data);
    });
    return this.regiao.id.toString();
  }

  getMunicipio() async {
    await Firestore.instance
        .collection('municipio')
        .document('${user.municipio}')
        .get()
        .then((value) {
      municipio = Municipio.fromJson(value.data);
      print(value.data);
    });
    return this.municipio.id.toString();
  }

  telefoneMin() => print('te');
  telefoneCVV() => print('cvv');
  telefoneFaleConosco() => print('fale conosco');
  mail() => print('email');
}
