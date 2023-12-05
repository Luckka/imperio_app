import 'package:dart_either/dart_either.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/core/shared/app_routes.dart';
import 'package:imperio/app/core/shared/exception/app_exception.dart';
import 'package:imperio/app/core/shared/services/prefs_service.dart';
import 'package:imperio/app/modules/login/domain/entity/login_entity.dart';
import 'package:imperio/app/modules/login/domain/usecase/login_usecase.dart';
import 'package:mobx/mobx.dart';

part 'login_mobx.g.dart';

class LoginMobx = LoginMobxBase with _$LoginMobx;

final emailController = TextEditingController();


abstract class LoginMobxBase with Store {

  final formKeyEmail = GlobalKey<FormState>();

  final formKeyPassword = GlobalKey<FormState>();

  final LoginUsecase loginUsecase;
  
  @observable
  bool isLogin = false;

  LoginMobxBase({required this.loginUsecase}); 
  
  String? _email;
  @action
  setEmail(String value) => _email = value;

  String? _password;
  @action
  setPassword(String value) => _password = value;


 

  @action 
  void submitEmail() {
    final isValid = formKeyEmail.currentState!.validate();
    if (!isValid) {
      return;
    }

    PrefsService.save(_email!);

    formKeyEmail.currentState!.save();
    Modular.to.navigate(AppRoutes.loginStep03);
  }


  @action 
  void submitPassword() {
    final isValid = formKeyPassword.currentState!.validate();
    if (!isValid) {
      return;
    }

  
    formKeyPassword.currentState!.save();

    isLogin = true;

    login().then((value) =>  Modular.to.navigate(AppRoutes.home));
   
  }

  @action
  Future<Either<AppException,LoginEntity>> login() async {
    
    return loginUsecase.call(email: emailController.text);
  }
  
}