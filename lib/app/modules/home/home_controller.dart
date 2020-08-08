import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:profectus/app/data/model/user_model.dart';
import 'package:profectus/app/data/repository/user_repository.dart';

class HomeController extends GetxController {
 final UserRepository repository;
  HomeController({@required this.repository}) : assert(repository != null);
  
  final UserModel user = Get.arguments;

  telefoneMin() => print('te');
  telefoneCVV() => print('cvv');
  telefoneFaleConosco() => print('fale conosco');
  mail() => print('email');
}