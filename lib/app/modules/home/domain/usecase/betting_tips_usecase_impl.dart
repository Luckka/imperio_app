import 'package:dart_either/src/dart_either.dart';
import 'package:imperio/app/core/shared/exception/app_exception.dart';
import 'package:imperio/app/modules/home/domain/entity/betting_tips_entity.dart';
import 'package:imperio/app/modules/home/domain/repository/betting_tips_repository.dart';
import 'package:imperio/app/modules/home/domain/usecase/betting_tips_usecase.dart';

class BettingTipsUsecaseImpl implements BettingTipsUsecase{

  final BettingTipsRepository repository;

  BettingTipsUsecaseImpl({required this.repository});


  @override
  Future<Either<AppException, List<BettingTipsEntity>>> call() async{
    return await repository.getTips();
  }
  
}