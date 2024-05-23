import 'package:fazfood/components/my_button.dart';
import 'package:fazfood/components/my_textfield.dart';

import 'package:fazfood/services/auth/auth_service.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();

  void login()async {
    final authService = AuthService();
    try{
      await authService.signInWithEmailAndPassword(emailcontroller.text, passwordcontroller.text);
     
    }catch(e){
     
      showDialog(context: context, builder: (context)=> AlertDialog(
        content: Text(e.toString()),
      ));
    }
    


    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Food Delivery App',
            style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary),
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
              controller: emailcontroller,
              hintText: 'Enter Email',
              obscureText: false),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
              controller: passwordcontroller,
              hintText: 'Enter Password',
              obscureText: true),
          const SizedBox(
            height: 10,
          ),
          MyButton(onTap: login, text: 'Sign In'),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a member?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary)),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'Register Now',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
