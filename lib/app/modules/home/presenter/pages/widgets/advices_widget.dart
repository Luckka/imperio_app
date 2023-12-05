// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/home/domain/entity/betting_tips_entity.dart';

import '../../../domain/usecase/betting_tips_usecase.dart';
import '../../stores/home_mobx.dart';



class AdvicesWidget extends StatelessWidget {
 
  final BettingTipsEntity bettingTipsEntity;

  const AdvicesWidget({
    Key? key,
    required this.bettingTipsEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
   
    return Container(
      height: 210,
      width: mediaQuery.size.width * 0.65,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: const Color(0xFFF0F1F5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Image.network(
              bettingTipsEntity.image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bettingTipsEntity.title,
                    style: theme.textTheme.labelMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    bettingTipsEntity.description,
                    style: theme.textTheme.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
           
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}