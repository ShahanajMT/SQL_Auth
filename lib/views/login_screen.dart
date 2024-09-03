import 'package:flutter/material.dart';
import 'package:sql_auth/components/asset_images.dart';
import 'package:sql_auth/components/button.dart';
import 'package:sql_auth/components/colors.dart';
import 'package:sql_auth/components/textFeilds.dart';
import 'package:sql_auth/views/profile_screen.dart';

import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //! controllers
  final usrName = TextEditingController();
  final password = TextEditingController();

  bool isCheckbox = false;

  bool isLoginTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "LOGIN",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(onBoarding1),
              InputFeild(
                  hintText: "Username",
                  icon: Icons.account_circle_outlined,
                  controller: usrName),
              InputFeild(
                  hintText: "Password",
                  icon: Icons.lock,
                  controller: password,
                  passwordInvisible: true),
              ListTile(
                horizontalTitleGap: 2,
                leading: Checkbox(
                  activeColor: primaryColor,
                  value: isCheckbox,
                  onChanged: (value) {
                    setState(() {
                      isCheckbox = !isCheckbox;
                    });
                  },
                ),
                title: const Text("Remember me"),
              ),
              Button(
                label: "LOGIN",
                press: () {
                  Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        ),
                      );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(color: primaryColor, fontSize: 16),
                    ),
                  ),
                ],
              ),
              isLoginTrue ?   ScaffoldMessenger(child: Text("Username or password is incorrect", style: TextStyle(color: Colors.red),)) : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
