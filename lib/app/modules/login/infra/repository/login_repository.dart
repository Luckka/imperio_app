import 'package:dart_either/src/dart_either.dart';
import 'package:imperio/app/core/shared/exception/app_exception.dart';
import 'package:imperio/app/modules/login/domain/entity/login_entity.dart';
import 'package:imperio/app/modules/login/domain/repository/login_repository.dart';
import 'package:imperio/app/modules/login/infra/datasource/login_datasource.dart';

class LoginRepositoryImpl implements LoginRepository{

  final LoginDatasource datasource;

  LoginRepositoryImpl({required this.datasource});


  @override
  Future<Either<AppException, LoginEntity>> login({required String email}) async{
     return await datasource.login(email: email);
  }
  
}