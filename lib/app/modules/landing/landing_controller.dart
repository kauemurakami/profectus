import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:profectus/app/data/repository/user_repository.dart';
import 'package:profectus/app/routes/app_pages.dart';

class LandingController extends GetxController {

  final UserRepository repository;
  LandingController({@required this.repository}) : assert(repository != null);

  getEndSlid(index) => index >= 7 ? Get.offAllNamed(Routes.LOGIN) : null;
  
}