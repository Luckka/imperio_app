import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/core/shared/app_routes.dart';
import 'package:imperio/app/modules/login/presenter/pages/login_page_step01.dart';
import 'package:imperio/app/modules/login/presenter/pages/login_page_step02.dart';

class LoginModule extends Module {
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => super.binds;


  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context,args) => const LoginPageStep01()),
    ChildRoute(AppRoutes.loginsStep02, child: (context,args) => const LoginPageStep02())
  ];
}