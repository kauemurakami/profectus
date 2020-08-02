import 'package:get/get.dart';
import 'package:profectus/app/modules/cadastro/cadastro_bindings.dart';
import 'package:profectus/app/modules/cadastro/cadastro_page.dart';
import 'package:profectus/app/modules/home/home_bindings.dart';
import 'package:profectus/app/modules/home/home_page.dart';
import 'package:profectus/app/modules/landing/landing_page.dart';
import 'package:profectus/app/modules/login/login_bindings.dart';
import 'package:profectus/app/modules/login/login_page.dart';
part './app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.LANDING, page:()=> LandingPage(),),
    GetPage(name: Routes.LOGIN, page:()=> LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.HOME, page:()=> HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.CADASTRO, page:()=> CadastroPage(), binding: CadastroBinding()),
  ];
}