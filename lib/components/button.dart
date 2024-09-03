// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sql_auth/components/colors.dart';

class Button extends StatelessWidget {
  final String label;
  final VoidCallback press;
  const Button({
    super.key,
    required this.label,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 55,
      width: size.width * .9,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: press,
        child: Text(label, style: const TextStyle(color: Colors.white),),
      ),
    );
  }
}
