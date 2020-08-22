import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:profectus/app/data/model/user_model.dart';
import 'package:profectus/app/data/repository/user_repository.dart';

class HomeController extends GetxController {
  final UserRepository repository;
  HomeController({@required this.repository}) : assert(repository != null);

  final UserModel user = Get.arguments;

  final pontuacaoRegiao = 0.obs;
  final pontuacaoEstado = 0.obs;
  final pontuacaoMunicipio = 0.obs;
  final pontuacaoPais = 0.obs;

  getDados() async {
    await Firestore.instance
        .collection('regioes')
        .document(user.regiao)
        .get()
        .then((value) {
      print(value.data.containsKey('pontuacao'));
    });
  }

  @override
  void onInit() {
    this.getDados();
    super.onInit();
  }

  telefoneMin() => print('te');
  telefoneCVV() => print('cvv');
  telefoneFaleConosco() => print('fale conosco');
  mail() => print('email');
}
