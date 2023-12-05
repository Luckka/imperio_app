import 'package:imperio/app/modules/home/domain/entity/betting_tips_entity.dart';

class BettingTipsMapper {
  BettingTipsMapper._();

  static Map<String,dynamic> toMap(BettingTipsEntity tipsEntity){
    return <String,dynamic> {
      'title': tipsEntity.title,
      'description': tipsEntity.description,
      'image': tipsEntity.image
    };
  }

  static BettingTipsEntity fromMap(Map<String,dynamic> map){
    return BettingTipsEntity(title: map['title'], description: map['description'], image: map['image']);
  }
}