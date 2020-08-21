import 'package:get/get.dart';
import 'package:profectus/app/data/provider/ibge_provider.dart';
import 'package:profectus/app/data/repository/user_repository.dart';
import 'package:http/http.dart' as http;
import 'package:profectus/app/modules/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(
        repository:
            UserRepository(apiClient: IBGEClient(httpClient: http.Client()))));
  }
}
