import 'package:imperio/app/modules/login/domain/entity/login_entity.dart';

class LoginMapper {
  LoginMapper._();

  static Map<String,dynamic> toMap(LoginEntity user) {

    return <String,dynamic> {
      'token': user.token,
      'refresh': user.refresh,
      'emailValido': user.emailValido
    };

  }

  static LoginEntity fromMap(Map<String,dynamic> map){
    return LoginEntity(token: map['token'], refresh: map['refresh'], emailValido: map['emailValido']);
    
  }
}