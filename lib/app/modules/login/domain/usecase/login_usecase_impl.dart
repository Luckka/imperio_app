import 'package:dart_either/src/dart_either.dart';
import 'package:imperio/app/core/shared/exception/app_exception.dart';
import 'package:imperio/app/modules/login/domain/entity/login_entity.dart';
import 'package:imperio/app/modules/login/domain/repository/login_repository.dart';
import 'package:imperio/app/modules/login/domain/usecase/login_usecase.dart';

class LoginUsecaseImpl implements LoginUsecase{

  final LoginRepository repository;

  LoginUsecaseImpl({required this.repository});


  @override
  Future<Either<AppException, LoginEntity>> call({required String email}) async{
    return await repository.login(email: email);
    
  }
  
}