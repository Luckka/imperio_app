import 'package:dart_either/dart_either.dart';
import 'package:imperio/app/core/shared/exception/app_exception.dart';
import 'package:imperio/app/modules/home/domain/entity/betting_tips_entity.dart';
import 'package:imperio/app/modules/home/domain/usecase/betting_tips_usecase.dart';
import 'package:mobx/mobx.dart';

part 'home_mobx.g.dart';

class HomeMobx = HomeMobxBase with _$HomeMobx;

abstract class HomeMobxBase with Store{
  

  final BettingTipsUsecase usecase;

  HomeMobxBase({required this.usecase});

  @observable
  List<BettingTipsEntity> tips = [];

 
  bool isLoadingTips = false;

  @action 
  setTips(List<BettingTipsEntity> tips){
      tips = tips;
  }




  @computed
  Future<void> getTips() async {
    
    var getAllTips = await usecase.call();

    
    getAllTips.fold(ifLeft: (value) {
      print(value);
    }, ifRight: (value) {
    
      setTips(value);
      print(tips);
    });

  
  }

  
  
}