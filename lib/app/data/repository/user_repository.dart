import 'package:meta/meta.dart';
import 'package:profectus/app/data/provider/data_provider.dart';
import 'package:profectus/app/data/provider/ibge_provider.dart';

class UserRepository {
  final IBGEClient apiClient;

  UserRepository({@required this.apiClient}) : assert(apiClient != null);

  getEstados() => apiClient.getEstados();
  getCidades(estado) => apiClient.getCidades(estado);
}
