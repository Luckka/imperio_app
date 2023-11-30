import 'package:flutter/material.dart';

class LoginPageStep02 extends StatelessWidget {
  const LoginPageStep02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Qual o seu e-mail?"),
          TextFormField(),
          TextFormField()
        ],
      ),
    );
  }
}