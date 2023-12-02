import 'package:flutter/material.dart';
import 'package:imperio/app/core/theme/app_colors.dart';

class DatesListWidget extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const DatesListWidget({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: AppColors.greyButton
          )
        ),
        child: Center(child: Text(text)),
      ),
    );
  }
}