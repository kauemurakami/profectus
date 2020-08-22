import 'package:meta/meta.dart';
import 'package:profectus/app/data/provider/ibge_provider.dart';

class UserRepository {
  final IBGEClient apiClient;

  UserRepository({@required this.apiClient}) : assert(apiClient != null);

  getEstados() => apiClient.getEstados();

  getCEP(cep) => apiClient.getCep(cep);

  getMunicipo(nibge) => apiClient.getMunicipo(nibge);
}
