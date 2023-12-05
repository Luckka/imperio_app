import 'package:dart_either/dart_either.dart';
import 'package:imperio/app/modules/home/domain/entity/betting_tips_entity.dart';

import '../../../../core/shared/exception/app_exception.dart';

abstract class BettingTipsUsecase{
   Future<Either<AppException, List<BettingTipsEntity>>> call();
}