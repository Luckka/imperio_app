import 'package:dart_either/src/dart_either.dart';
import 'package:dio/dio.dart';
import 'package:imperio/app/core/shared/exception/app_exception.dart';
import 'package:imperio/app/modules/home/domain/entity/betting_tips_entity.dart';
import 'package:imperio/app/modules/home/domain/helpers/betting_tips_exception.dart';
import 'package:imperio/app/modules/home/infra/datasource/betting_tips_datasource.dart';
import 'package:imperio/app/modules/home/infra/mappers/betting_tips_mapper.dart';

class BettingTipsDatasourceImpl implements BettingTipsDatasource{

    final Dio dio;

  BettingTipsDatasourceImpl({required this.dio});


  @override
  Future<Either<AppException, List<BettingTipsEntity>>> getTips() async{
    String message = '';

    try{

      var response = await dio.get("https://6569cc7dde53105b0dd7af5c.mockapi.io/tips");

      

      List<BettingTipsEntity> tips = List.from(response.data).map((e) => BettingTipsMapper.fromMap(e)).toList();

      return Right(tips);

    } catch(e,s) {
      return Left(BettingTipsException(message: message, strackTrace: s));
    }
  }
  
}