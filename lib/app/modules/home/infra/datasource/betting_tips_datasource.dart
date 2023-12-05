import 'package:dart_either/dart_either.dart';
import 'package:imperio/app/core/shared/exception/app_exception.dart';
import 'package:imperio/app/modules/home/domain/entity/betting_tips_entity.dart';

abstract class BettingTipsDatasource {
  Future<Either<AppException,List<BettingTipsEntity>>> getTips();
}