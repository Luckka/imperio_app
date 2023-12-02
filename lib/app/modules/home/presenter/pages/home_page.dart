import 'package:flutter/material.dart';
import 'package:imperio/app/core/shared/app_constants.dart';
import 'package:imperio/app/core/shared/widgets/scoreboard_widget.dart';
import 'package:imperio/app/core/theme/app_colors.dart';
import 'package:imperio/app/core/theme/app_text_styles.dart';
import 'package:imperio/app/modules/home/presenter/pages/data/home_mock.dart';
import 'package:imperio/app/modules/home/presenter/pages/widgets/action_button_popular_championship_widget.dart';
import 'package:imperio/app/modules/home/presenter/pages/widgets/advices_widget.dart';
import 'package:imperio/app/modules/home/presenter/pages/widgets/dates_list_widget.dart';
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
                colors: [AppColors.surfaceYellow, AppColors.white])),
        child: SingleChildScrollView(
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
                            icon: item.icon,
                            text: item.title,
                            onTap: item.onTap);
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
                    height: 100,
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
                  SizedBox(
                    height: 48,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: AppMock.dates.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                      itemBuilder: (context, index) {
                        final item = AppMock.dates.elementAt(index);
                        return DatesListWidget(
                          text: item.text,
                          onTap: item.onTap,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    height: 394,
                    child: ListView.separated(
                      itemCount: AppMock.scoreBoard.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                      itemBuilder: (context, index) {
                        final item = AppMock.scoreBoard.elementAt(index);
                        return ScoreBoardWidget(
                          team1: item.team1,
                          team2: item.team2,
                          titleTeam1: item.titleTeam1,
                          titleTeam2: item.titleTeam2,
                          score: item.score,
                          sponsorIn: item.sponsorIn,
                          sponsorX: item.sponsorX,
                          sponsorOut: item.sponsorOut,
                          scoreSponsorIn: item.scoreSponsorIn,
                          scoreSponsorOut: item.scoreSponsorOut,
                          scoreSponsorX: item.scoreSponsorX,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 394,
                    child: ListView.separated(
                      itemCount: AppMock.scoreBoard.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                      itemBuilder: (context, index) {
                        final item = AppMock.scoreBoard.elementAt(index);
                        return ScoreBoardWidget(
                          team1: item.team1,
                          team2: item.team2,
                          titleTeam1: item.titleTeam1,
                          titleTeam2: item.titleTeam2,
                          score: item.score,
                          sponsorIn: item.sponsorIn,
                          sponsorX: item.sponsorX,
                          sponsorOut: item.sponsorOut,
                          scoreSponsorIn: item.scoreSponsorIn,
                          scoreSponsorOut: item.scoreSponsorOut,
                          scoreSponsorX: item.scoreSponsorX,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Acompanhe todas as partidas",
                          style: AppTextStyles.labelMedium.copyWith(
                              fontWeight: FontWeight.bold,
                              fontFamily: AppConstants.montserratFontFamily)),
                      SizedBox(width: 10),
                      Container(
                          height: 47.9,
                          width: 67,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              color: AppColors.yellow),
                          child: Image.asset("assets/icons/arrow_right.png"))
                    ],
                  ),
                  SizedBox(height: 36),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Dicas"), Text("Ver todas")],
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: AppMock.betAdvices.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                      itemBuilder: (context, index) {
                        final item = AppMock.betAdvices.elementAt(index);
                        return AdvicesWidget(
                          cardImage: item.cardImage,
                          title: item.title,
                          content: item.content,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Principais bônus de aposta",
                    style: AppTextStyles.titleLarge,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 80,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        color: AppColors.surfaceYellow,
                        borderRadius: BorderRadius.circular(24)),
                    child: Row(
                      children: [],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 80,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        color: AppColors.surfaceYellow,
                        borderRadius: BorderRadius.circular(24)),
                    child: Row(
                      children: [],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Veja mais bônus disponíveis",
                          style: AppTextStyles.labelMedium.copyWith(
                              fontWeight: FontWeight.bold,
                              fontFamily: AppConstants.montserratFontFamily)),
                      SizedBox(width: 10),
                      Container(
                          height: 47.9,
                          width: 67,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              color: AppColors.yellow),
                          child: Image.asset("assets/icons/arrow_right.png"))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
