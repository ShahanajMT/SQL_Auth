import 'package:flutter/material.dart';
import 'package:sql_auth/components/button.dart';
import 'package:sql_auth/components/colors.dart';

import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 77,
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 75,
                  
                ),
              ),
             const  SizedBox(height: 10),
              const Text("Muhammed Shahanaj", style: TextStyle(fontSize: 28, color: primaryColor,),),
              const Text("shahanajmt@gmail.com", style: TextStyle(fontSize: 17, color: Colors.grey),),
      
      
              Button(label: "SIGN OUT", press: () {
                Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
              },),
      
              const ListTile(
                leading: Icon(Icons.person, size: 30),
                title: Text("Muhammed Shahanaj"),
                subtitle: Text("FullName"),
              ),
      
              const ListTile(
                leading: Icon(Icons.email, size: 30),
                title: Text("shahanajmt@gmail.com"),
                subtitle: Text("Email"),
              ),
      
              const ListTile(
                leading: Icon(Icons.account_circle_outlined, size: 30),
                title: Text("admin"),
                subtitle: Text("Admin"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}