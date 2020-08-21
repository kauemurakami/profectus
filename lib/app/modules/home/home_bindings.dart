import 'package:get/get.dart';
import 'package:profectus/app/data/provider/ibge_provider.dart';
import 'package:profectus/app/data/repository/user_repository.dart';
import 'package:http/http.dart' as http;
import 'package:profectus/app/modules/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(
        repository:
            UserRepository(apiClient: IBGEClient(httpClient: http.Client()))));
  }
}
