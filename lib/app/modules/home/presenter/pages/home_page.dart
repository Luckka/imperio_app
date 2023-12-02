import 'package:flutter/material.dart';
import 'package:imperio/app/core/shared/app_constants.dart';
import 'package:imperio/app/core/theme/app_colors.dart';
import 'package:imperio/app/core/theme/app_text_styles.dart';
import 'package:imperio/app/modules/home/presenter/pages/data/home_mock.dart';
import 'package:imperio/app/modules/home/presenter/pages/widgets/action_button_popular_championship_widget.dart';
import 'package:imperio/app/modules/home/presenter/pages/widgets/pages_navigation_widget.dart';

import 'widgets/main_banner_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
            AppColors.surfaceYellow,
            AppColors.white
          ])
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset("assets/images/logo_imperio.png")),
                SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  width: 373,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: AppMock.pages.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 16),
                    itemBuilder: (context, index) {
                      final item = AppMock.pages.elementAt(index);
                      return PagesNavigationWidget(
                          icon: item.icon, text: item.title, onTap: item.onTap);
                    },
                  ),
                ),
                SizedBox(
                  height: 166,
                  width: 373,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: AppMock.banners.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 8),
                    itemBuilder: (context, index) {
                      final item = AppMock.banners.elementAt(index);
                      return MainBannerWidget(
                        onTap: () {},
                        cardImage: item.image,
                        title: item.title,
                        color: item.color,
                        subtitle: item.subtitle,
                      );
                    },
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  "Campeonatos populares",
                  style: AppTextStyles.titleAppBar,
                ),
                SizedBox(height: 24),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: AppMock.profileButtons.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 8),
                    itemBuilder: (context, index) {
                      final item = AppMock.profileButtons.elementAt(index);
                      return ActionButtonPopularChampionshipsWidget(
                          onTap: () {}, icon: item.icon);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
