import 'package:dart_either/src/dart_either.dart';
import 'package:imperio/app/core/shared/exception/app_exception.dart';
import 'package:imperio/app/modules/home/domain/entity/betting_tips_entity.dart';
import 'package:imperio/app/modules/home/domain/repository/betting_tips_repository.dart';
import 'package:imperio/app/modules/home/infra/datasource/betting_tips_datasource.dart';

class BettingTipsRepositoryImpl implements BettingTipsRepository{

  final BettingTipsDatasource datasource;

  BettingTipsRepositoryImpl({required this.datasource});


  @override
  Future<Either<AppException, List<BettingTipsEntity>>> getTips() async{
     return await datasource.getTips();
  }
  
}