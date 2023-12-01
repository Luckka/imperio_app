import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/core/shared/app_routes.dart';
import 'package:imperio/app/modules/home/home_module.dart';
import 'package:imperio/app/modules/login/login_module.dart';

class AppModule extends Module{
  @override
  List<Bind<Object>> get binds => [];



  @override
  List<ModularRoute> get routes => [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute(AppRoutes.home, module: HomeModule())
  ];
}