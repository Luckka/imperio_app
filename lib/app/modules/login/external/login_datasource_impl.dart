import 'package:dart_either/src/dart_either.dart';
import 'package:dio/dio.dart';
import 'package:imperio/app/core/shared/exception/app_exception.dart';
import 'package:imperio/app/modules/login/domain/entity/login_entity.dart';
import 'package:imperio/app/modules/login/domain/helpers/login_exception.dart';
import 'package:imperio/app/modules/login/infra/datasource/login_datasource.dart';
import 'package:imperio/app/modules/login/infra/mappers/login_mapper.dart';

class LoginDatasourceImpl implements LoginDatasource {
  final Dio dio;

  LoginDatasourceImpl({required this.dio});

  @override
  Future<Either<AppException, LoginEntity>> login(
      {required String email}) async {
    String message = '';
    try {
      var response =
          await dio.post("https://6569cc7dde53105b0dd7af5c.mockapi.io/login");

      return Right(LoginMapper.fromMap(response.data));
    } catch (e, s) {
      return Left(LoginException(message: message, strackTrace: s));
    }
  }
}
