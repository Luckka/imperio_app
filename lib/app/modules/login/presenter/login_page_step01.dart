import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/core/shared/app_routes.dart';
import 'package:imperio/app/core/theme/app_colors.dart';
import 'package:imperio/app/core/theme/app_text_styles.dart';
import 'package:imperio/app/modules/login/presenter/widgets/bottom_widget.dart';
import 'package:imperio/app/modules/login/presenter/widgets/botton_widget_external.dart';

class LoginPageStep01 extends StatelessWidget {
  const LoginPageStep01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/men_login.jpeg"),
                Padding(
                  padding: const EdgeInsets.only(top:70.0,left: 10),
                  child: Icon(Icons.arrow_back,color: Colors.white,),
                ),
                
                Container(
                  margin: EdgeInsets.only(top: 270,left: 20),
                  child: Text("Entre\nem sua conta",style: AppTextStyles.titleMedium,)),
              
                Container(
                  margin: EdgeInsets.only(top: 340,left: 20),
                  child: Text("Acompanhe seus jogos,\n campeonatos e times favoritos",style: AppTextStyles.bodySmall,)),

               
              ],
            ),
           SizedBox(height: 62),
           Padding(
             padding: const EdgeInsets.only(left:40.0,right: 40.0),
             child: ElevatedButtonWidgetExternal(icon: Image.asset("assets/icons/google_icon.png"), label: Text("Entrar com Google",),backgroundColor: AppColors.greyButton, onPressed: () {  }, ),
           ),
            SizedBox(height: 8),
           Padding(
             padding: const EdgeInsets.only(left:40.0,right: 40.0),
             child: ElevatedButtonWidgetExternal(icon: Image.asset("assets/icons/apple_icon.png"), label: Text("Entrar com Apple",style: TextStyle(color: AppColors.white),),backgroundColor: AppColors.blackText, onPressed: () {  }),
           ),
          SizedBox(height: 41),
           Row(
       
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 1,width: 110,color: AppColors.greyButton,),
              SizedBox(width: 8),
              Text("ou entre com",style: AppTextStyles.bodyMedium.copyWith(color: AppColors.greyStrong,fontWeight: FontWeight.w600),),
               SizedBox(width: 8),
              Container(height: 1,width: 110,color: AppColors.greyButton,),
            ],
           ),
          SizedBox(height: 41),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
          
            children: [
             
              ElevatedButtonWidget( label: const Text("Email"), onPressed: () { 
                Modular.to.navigate(AppRoutes.loginsStep02);
               }, width: 147,),
              SizedBox(width: 11),
              ElevatedButtonWidget( label: Text("Telefone"), onPressed: () {  }, width: 147,backgroundColor: AppColors.yellow,)
            
              
            ],
           )
          ],
        ),
      ),
    );
  }
}