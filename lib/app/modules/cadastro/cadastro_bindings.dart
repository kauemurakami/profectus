import 'package:get/get.dart';
import 'package:vitalis/app/data/provider/data_provider.dart';
import 'package:vitalis/app/data/repository/user_repository.dart';
import 'package:http/http.dart' as http;
import 'package:vitalis/app/modules/cadastro/cadastro_controller.dart';

class CadastroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CadastroController>(() => CadastroController(
        repository: UserRepository(
            apiClient: DataProvider(httpClient: http.Client()))));
  }
}
