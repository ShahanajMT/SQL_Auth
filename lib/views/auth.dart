import 'package:flutter/material.dart';
import 'package:sql_auth/components/asset_images.dart';
import 'package:sql_auth/components/button.dart';
import 'package:sql_auth/components/colors.dart';
import 'package:sql_auth/views/login_screen.dart';
import 'package:sql_auth/views/signup_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Authentication",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              const Text(
                "Authenticate to aceess your vital information",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Expanded(
                child: Image.asset(onBoarding1),
              ),
              Button(
                label: 'LOGIN',
                press: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen(),),);
                },
              ),
              Button(
                label: 'SIGN UP',
                press: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignupScreen(),),);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
