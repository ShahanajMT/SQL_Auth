import 'package:flutter/material.dart';
import 'package:sql_auth/views/login_screen.dart';

import '../components/button.dart';
import '../components/colors.dart';
import '../components/textFeilds.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fullName = TextEditingController();
    final email = TextEditingController();
    final usrName = TextEditingController();
    final password = TextEditingController();
    final confirmPassword = TextEditingController();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "CREATE ACCOUNT",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
             const  SizedBox(height: 50),
              InputFeild(
                hintText: "FullName",
                icon: Icons.person,
                controller: fullName,
              ),
              InputFeild(
                hintText: "Email",
                icon: Icons.email,
                controller: email,
              ),
              InputFeild(
                hintText: "Username",
                icon: Icons.account_circle_outlined,
                controller: usrName,
              ),
              InputFeild(
                hintText: "Password",
                icon: Icons.lock,
                controller: password,
                passwordInvisible: true,
              ),
              InputFeild(
                hintText: "Re-entered password",
                icon: Icons.lock,
                controller: confirmPassword,
                passwordInvisible: false,
              ),

               const  SizedBox(height: 50),

              Button(
                label: "SIGN UP",
                press: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: primaryColor, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
