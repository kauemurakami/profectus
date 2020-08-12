import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:meta/meta.dart';
import 'package:profectus/app/data/repository/user_repository.dart';

class LandingController extends GetxController {

  final UserRepository repository;
  LandingController({@required this.repository}) : assert(repository != null);

  final _page = 0.obs;
  get page => this._page.value;
  set page(value) => this._page.value = value;
  
  UpdateType updateType;

}