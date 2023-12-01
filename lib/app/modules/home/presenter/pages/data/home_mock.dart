import 'package:flutter/material.dart';

class AppMock{
  const AppMock._();


  static final profileButtons = [
    ProfileButton(icon: Image.asset("assets/images/la_liga.png")),


  ];


}


class ProfileButton {
  final Widget icon;
 
  

  const ProfileButton({
    required this.icon,
  });
}