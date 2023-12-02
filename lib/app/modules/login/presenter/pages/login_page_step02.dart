import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/core/shared/app_routes.dart';
import 'package:imperio/app/core/theme/app_colors.dart';
import 'package:imperio/app/core/theme/app_text_styles.dart';
import 'package:imperio/app/modules/login/presenter/widgets/bottom_widget.dart';

class LoginPageStep02 extends StatelessWidget {
  const LoginPageStep02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back),
              SizedBox(height: 20),
              Text("Qual o seu e-mail?",style: AppTextStyles.titleMediumMontserrat.copyWith(color: AppColors.blackText,fontWeight: FontWeight.bold,),),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
               SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
              SizedBox(height: 15),
              Center(child: ElevatedButtonWidget(label: Text("Continuar"), onPressed: () {
                Modular.to.navigate(AppRoutes.home);
              }, width: 269,backgroundColor: AppColors.yellow,))
            ],
          ),
        ),
      ),
    );
  }
}