import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/home/presenter/pages/home_page.dart';

class HomeModule extends Module{
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => super.binds;


  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (args,context) => const HomePage())
  ];
}