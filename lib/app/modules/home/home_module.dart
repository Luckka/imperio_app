import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/home/domain/usecase/betting_tips_usecase.dart';
import 'package:imperio/app/modules/home/domain/usecase/betting_tips_usecase_impl.dart';
import 'package:imperio/app/modules/home/external/betting_tips_datasource_impl.dart';
import 'package:imperio/app/modules/home/infra/repository/betting_tips_repository_impl.dart';
import 'package:imperio/app/modules/home/presenter/pages/home_page.dart';

class HomeModule extends Module{
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => [
    Bind.lazySingleton((i) => BettingTipsDatasourceImpl(dio: i())),
    Bind.lazySingleton((i) => BettingTipsRepositoryImpl(datasource: i())),
    Bind.lazySingleton((i) => BettingTipsUsecaseImpl(repository: i())),
    Bind.lazySingleton((i) => Dio())
  ];


  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (args,context) => const HomePage())
  ];
}