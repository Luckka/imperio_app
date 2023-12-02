import 'package:dart_either/dart_either.dart';
import 'package:flutter/cupertino.dart';
import 'package:imperio/app/core/shared/exception/app_exception.dart';
import 'package:imperio/app/modules/login/domain/entity/login_entity.dart';
import 'package:imperio/app/modules/login/domain/usecase/login_usecase.dart';
import 'package:mobx/mobx.dart';

part 'login_mobx.g.dart';

class LoginMobx = LoginMobxBase with _$LoginMobx;

late final LoginUsecase loginUsecase;

final emailController = TextEditingController();







abstract class LoginMobxBase with Store {
  @observable
  bool isLogin = false; 

  @action
  Future<Either<AppException,LoginEntity>> login() async {
    return await loginUsecase.call(email: emailController.text);
  }
  
}