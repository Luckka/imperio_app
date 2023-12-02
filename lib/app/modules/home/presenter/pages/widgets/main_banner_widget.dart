// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:imperio/app/core/shared/app_constants.dart';
import 'package:imperio/app/core/theme/app_colors.dart';
import 'package:imperio/app/core/theme/app_text_styles.dart';

class MainBannerWidget extends StatelessWidget {
  final Widget cardImage;
  final String title;
  final Color? color;
  final String? subtitle;
 

  const MainBannerWidget({
    Key? key,
    required this.cardImage,
    required this.title,
   
    required Null Function() onTap, required this.color, this.subtitle,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Container(
            height: 166,
            width: 270,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(36),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      title,
                      style: AppTextStyles.titleAppBar
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Text(subtitle ?? '',style: AppTextStyles.labelMedium.copyWith(fontFamily: AppConstants.montserratFontFamily,fontWeight: FontWeight.bold,color: AppColors.blackText,),),
                  ),
                  const SizedBox(height: 8),
                  
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:85.0),
          child: Container(height: 181, width: 191, child: cardImage),
        ),
      ],
    );
  }
}
