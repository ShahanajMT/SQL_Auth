// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sql_auth/components/colors.dart';

class InputFeild extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool passwordInvisible;
  final TextEditingController controller;

  const InputFeild({
    super.key,
    required this.hintText,
    required this.icon,
    this.passwordInvisible = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 55,
      width: size .width * .9,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: TextFormField(
          obscureText: passwordInvisible!,
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            icon: Icon(icon),
          ),
        ),
      ),
    );
  }
}
