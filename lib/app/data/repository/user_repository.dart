import 'package:meta/meta.dart';
import 'package:vitalis/app/data/provider/data_provider.dart';

class UserRepository {
  final DataProvider apiClient;

  UserRepository({@required this.apiClient}) : assert(apiClient != null);
}
