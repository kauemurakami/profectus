import 'package:get/get.dart';
import 'package:vitalis/app/data/provider/data_provider.dart';
import 'package:vitalis/app/data/repository/user_repository.dart';
import 'package:http/http.dart' as http;
import 'package:vitalis/app/modules/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(
        repository: UserRepository(
            apiClient: DataProvider(httpClient: http.Client()))));
  }
}
