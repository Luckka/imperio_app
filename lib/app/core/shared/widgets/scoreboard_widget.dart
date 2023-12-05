import 'package:flutter/material.dart';
import 'package:imperio/app/core/theme/app_colors.dart';
import 'package:imperio/app/core/theme/app_text_styles.dart';

class ScoreBoardWidget extends StatelessWidget {
  final Widget team1;
  final Widget team2;
  final String titleTeam1;
  final String titleTeam2;
  final String score;
  final Widget sponsorIn;
  final Widget sponsorX;
  final Widget sponsorOut;
  final String scoreSponsorIn;
  final String scoreSponsorOut;
  final String scoreSponsorX;
  const ScoreBoardWidget(
      {super.key,
      required this.team1,
      required this.team2,
      required this.titleTeam1,
      required this.titleTeam2,
      required this.score,
      required this.sponsorIn,
      required this.sponsorX,
      required this.sponsorOut,
      required this.scoreSponsorIn,
      required this.scoreSponsorOut,
      required this.scoreSponsorX});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 394,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color.fromARGB(15, 0, 0, 0),
                blurRadius: 15.0,
                offset: Offset(0.0, 0.75)
            )
          ],
          borderRadius: BorderRadius.circular(36),
          border: Border.all(color: AppColors.grey)),
      child: Column(
        children: [
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 61, child: team1),
                  Text(titleTeam1)
                ],
              ),
              Column(
                children: [
                  Text("Ao vivo"),
                  SizedBox(height: 8),
                  Container(
                    height: 36,
                    width: 73,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: AppColors.greyButton)),
                    child: Center(child: Text("60'")),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 61, child: team2),
                  Text(titleTeam2),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            score,
            style:
                AppTextStyles.scoreTitle.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 13),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  sponsorIn,
                  SizedBox(height: 5),
                  Text(scoreSponsorIn)
                ],
              ),
              Container(
                height: 30,
                width: 1,
                color: AppColors.greyButton,
              ),
              Column(
                children: [sponsorX, SizedBox(height: 5), Text(scoreSponsorX)],
              ),
              Container(
                height: 30,
                width: 1,
                color: AppColors.greyButton,
              ),
              Column(
                children: [
                  sponsorOut,
                  SizedBox(height: 5),
                  Text(scoreSponsorOut)
                ],
              )
            ],
          ),
          SizedBox(height: 13),
          Container(
            height: 1,
            width: size.width * 0.8,
            color: AppColors.greyButton,
          ),
          SizedBox(
            height: 13,
          ),

          InkWell(
            onTap: () {
              
            },
            child: Text("Ver mais"))
        ],
      ),
    );
  }
}
