import 'package:flutter/material.dart';
import 'package:imperio/app/core/theme/app_colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Color? backgroundColor;

  final  Widget label;
  final double width;
  final void Function()? onPressed;
  const ElevatedButtonWidget({super.key, this.backgroundColor, required this.label, required this.onPressed, required this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        
        width: width,
        height: 56,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.grey
          ),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(24)
        ),
        child: Center(child: label)
      ),
    );
  }
}
