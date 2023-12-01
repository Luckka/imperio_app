import 'package:flutter/material.dart';
import 'package:imperio/app/core/theme/app_colors.dart';

class ActionButtonPopularChampionshipsWidget extends StatelessWidget {
  final VoidCallback onTap;
  final Widget icon;
  final String? specialText;
  final bool showInformation;

  const ActionButtonPopularChampionshipsWidget({
    Key? key,
    required this.onTap,
    required this.icon,
    this.specialText,
    this.showInformation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 76,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: AppColors.surfaceYellow,
                borderRadius: BorderRadius.circular(24)
              ),
              child: Stack(
                children: [
                  Center(child: icon),
                  if (specialText != null)
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: FittedBox(
                          child: Text(
                            showInformation ? specialText! : '●●●●',
                            style: theme.primaryTextTheme.labelMedium,
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ),
         
            
          ],
        ),
      ),
    );
  }
}