import 'package:flutter/material.dart';
import 'package:imperio/app/core/theme/app_colors.dart';

class AppMock{
  const AppMock._();


  static final profileButtons = [
    ProfileButton(icon: Image.asset("assets/images/la_liga.png")),
    ProfileButton(icon: Image.asset("assets/images/champions_league_logo.png")),
    ProfileButton(icon: Image.asset("assets/images/champ3.png")),
    ProfileButton(icon: Image.asset("assets/images/europa_icon.png")),
    ProfileButton(icon: Image.asset("assets/images/la_liga.png")),
    ProfileButton(icon: Image.asset("assets/images/champions_league_logo.png")),
    ProfileButton(icon: Image.asset("assets/images/champ3.png")),
    ProfileButton(icon: Image.asset("assets/images/europa_icon.png")),


  ];

  static final banners = [
    MainBanner(image: Image.asset("assets/images/guy_champ.png"), title: "Campeonatos\npopulares", color: AppColors.yellow),
    MainBanner(image: Image.asset("assets/images/guy_nba.png"), title: "NBA", color: AppColors.grey,subtitle: "National Basketball\nAssociation"),
    MainBanner(image: Image.asset("assets/images/redbull_banner.png"), title: "League\nof its Own", color: AppColors.surfaceYellow),
  ];

  static final pages = [
    Pages(title: "Todos", icon: Image.asset("assets/icons/whistle_icon.png"), onTap: () {  }),
    Pages(title: "Futebol", icon: Image.asset("assets/icons/soccer_icon.png"), onTap: () {  }),
    Pages(title: "Basquete", icon: Image.asset("assets/icons/basketball_icon.png"), onTap: () {  }),
    Pages(title: "E-Sports", icon: Image.asset("assets/icons/controller_icon.png"), onTap: () {  }),
  ];


}

class MainBanner{
  final Widget image;
  final String title;
  final String? subtitle;
  final Color? color;

  MainBanner( {required this.image, required this.title, this.subtitle, required this.color,});
}

class Pages{
  final String title;
  final Widget icon;
  final void Function()? onTap;

  Pages({required this.title, required this.icon, required this.onTap,});

  
}


class ProfileButton {
  final Widget icon;
 
  

  const ProfileButton({
    required this.icon,
  });
}