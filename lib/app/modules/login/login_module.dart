import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/core/shared/app_routes.dart';
import 'package:imperio/app/modules/login/domain/usecase/login_usecase_impl.dart';
import 'package:imperio/app/modules/login/external/login_datasource_impl.dart';
import 'package:imperio/app/modules/login/infra/repository/login_repository.dart';
import 'package:imperio/app/modules/login/presenter/pages/login_page_step01.dart';
import 'package:imperio/app/modules/login/presenter/pages/login_page_step02.dart';
import 'package:imperio/app/modules/login/presenter/pages/login_page_step03.dart';

class LoginModule extends Module {
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => [
    Bind.lazySingleton((i) => LoginUsecaseImpl(repository: i())),
    Bind.lazySingleton((i) => LoginRepositoryImpl(datasource: i())),
    Bind.lazySingleton((i) => LoginDatasourceImpl(dio: i())),
    Bind.lazySingleton((i) => Dio())

  ];


  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context,args) => const LoginPageStep01()),
    ChildRoute(AppRoutes.loginStep02, child: (context,args) => const LoginPageStep02()),
    ChildRoute(AppRoutes.loginStep03, child: (context,args) => const LoginPageStep03())
  ];
}