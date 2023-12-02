import 'package:dart_either/dart_either.dart';
import 'package:imperio/app/core/shared/exception/app_exception.dart';
import 'package:imperio/app/modules/login/domain/entity/login_entity.dart';

abstract class LoginUsecase{
  Future<Either<AppException, LoginEntity>> call({required String email});
}