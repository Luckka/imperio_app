// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginMobx on LoginMobxBase, Store {
  late final _$isLoginAtom =
      Atom(name: 'LoginMobxBase.isLogin', context: context);

  @override
  bool get isLogin {
    _$isLoginAtom.reportRead();
    return super.isLogin;
  }

  @override
  set isLogin(bool value) {
    _$isLoginAtom.reportWrite(value, super.isLogin, () {
      super.isLogin = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('LoginMobxBase.login', context: context);

  @override
  Future<Either<AppException, LoginEntity>> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  @override
  String toString() {
    return '''
isLogin: ${isLogin}
    ''';
  }
}