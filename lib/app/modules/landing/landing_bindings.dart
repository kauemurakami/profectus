import 'package:vitalis/app/data/provider/data_provider.dart';
import 'package:vitalis/app/data/repository/user_repository.dart';
import 'package:vitalis/app/modules/landing/landing_controller.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class LandingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(() => LandingController(
        repository: UserRepository(
            apiClient: DataProvider(httpClient: http.Client()))));
  }
}
