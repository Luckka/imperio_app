import 'package:flutter/material.dart';
import 'package:imperio/app/core/theme/app_colors.dart';

class ElevatedButtonWidgetExternal extends StatelessWidget {
  final Color? backgroundColor;
  final Widget icon;
  final  Widget label;
  final void Function()? onPressed;
  const ElevatedButtonWidgetExternal({super.key, this.backgroundColor, required this.icon, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        width: 298,
        height: 56,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(24)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            Padding(
              padding: const EdgeInsets.only(right:50.0),
              child: label,
            )
          ],
        ),
      ),
    );
  }
}
