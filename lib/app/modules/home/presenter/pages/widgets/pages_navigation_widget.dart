import 'package:flutter/material.dart';
import 'package:imperio/app/core/shared/app_constants.dart';
import 'package:imperio/app/core/theme/app_text_styles.dart';

class PagesNavigationWidget extends StatelessWidget {
  final Widget icon;
  final String text;
  final void Function()? onTap;
  const PagesNavigationWidget({super.key, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          icon,
          SizedBox(width: 7),
          Text(text,style: AppTextStyles.bodyMedium.copyWith(fontFamily: AppConstants.montserratFontFamily,fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}