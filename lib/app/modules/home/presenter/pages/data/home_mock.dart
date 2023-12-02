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

  static final dates = [
    DateButton(text: "Live", onTap: () {  }),
    DateButton(text: "Hoje", onTap: () {  }),
    DateButton(text: "01/11", onTap: () {  }),
    DateButton(text: "02/11", onTap: () {  }),
    DateButton(text: "03/11", onTap: () {  }),
    DateButton(text: "04/11", onTap: () {  }),
  ];

  static final scoreBoard = [
    ScoreBoard(team1: Image.asset("assets/images/team1_logo.png"), team2: Image.asset("assets/images/team2_logo.png"), score: "2:2" , sponsorIn: Image.asset("assets/images/sponsor1.png"), sponsorOut: Image.asset("assets/images/betsson.png"), sponsorX: Image.asset("assets/images/sponsor2.png"), titleTeam1: 'São Paulo', titleTeam2: 'Palmeiras', scoreSponsorIn: '3.2', scoreSponsorOut: '2.6', scoreSponsorX: '3.4')
  ];

  static final betAdvices = [
    BetAdvices(cardImage: "assets/images/guy_login_small.png", title: "Apostas ao Vivo: Estratégias e Dicas para o Sucesso", content: "Explore as melhores práticas ..."),
    BetAdvices(cardImage: "assets/images/guy_login_small.png", title: "Apostas ao Vivo: Estratégias e Dicas para o Sucesso", content: "Explore as melhores práticas ..."),
    BetAdvices(cardImage: "assets/images/guy_login_small.png", title: "Apostas ao Vivo: Estratégias e Dicas para o Sucesso", content: "Explore as melhores práticas ..."),
    BetAdvices(cardImage: "assets/images/guy_login_small.png", title: "Apostas ao Vivo: Estratégias e Dicas para o Sucesso", content: "Explore as melhores práticas ..."),
    BetAdvices(cardImage: "assets/images/guy_login_small.png", title: "Apostas ao Vivo: Estratégias e Dicas para o Sucesso", content: "Explore as melhores práticas ..."),
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

class DateButton{
  final String text;
  final void Function()? onTap;

  DateButton({required this.text, required this.onTap,});
}

class ScoreBoard{
  final Widget team1;
  final Widget team2;
  final String score;
  final Widget sponsorIn;
  final Widget sponsorOut;
  final Widget sponsorX;
  final String titleTeam1;
  final String titleTeam2;
  final String scoreSponsorIn;
  final String scoreSponsorOut;
  final String scoreSponsorX;

  ScoreBoard({required this.team1, required this.team2, required this.score, required this.sponsorIn, required this.sponsorOut, required this.sponsorX, required this.titleTeam1, required this.titleTeam2,required this.scoreSponsorIn, required this.scoreSponsorOut, required this.scoreSponsorX,});



}

class BetAdvices {
  final String cardImage;
  final String title;
  final String content;

  BetAdvices({required this.cardImage, required this.title, required this.content});
}

