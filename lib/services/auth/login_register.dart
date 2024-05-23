import 'package:fazfood/pages/login_page.dart';
import 'package:fazfood/pages/register_page.dart';
import 'package:flutter/material.dart';


class LoginRegister extends StatefulWidget {
  const LoginRegister({super.key});

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  // variable to track which page to show
  bool showLoginPage = true;

  // function to toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  // build method to return either login or register page based on showLoginPage
  Widget build(BuildContext context) {

    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
    
    
  }
}
