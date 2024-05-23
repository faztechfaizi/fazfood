

import 'package:fazfood/components/my_button.dart';
import 'package:fazfood/components/my_textfield.dart';
import 'package:fazfood/services/auth/auth_service.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller = TextEditingController();

  void register () async{
    final _authService = AuthService();

    if(passwordcontroller.text == confirmpasswordcontroller.text){
      try{
        await _authService.createUserWithEmailAndPassword(emailcontroller.text, passwordcontroller.text);
      }catch(e){
        showDialog(context: context, builder: (context)=> AlertDialog(
          title: Text(e.toString()),

        ));
      }
    }else{
      showDialog(context: context, builder: (context)=> AlertDialog(
        title: const Text('Password Incorrect'),));

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
            'Create Account',
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

              MyTextField(
              controller: confirmpasswordcontroller,
              hintText: 'Confirm Password',
              obscureText: true),
          const SizedBox(
            height: 10,
          ),
          MyButton(onTap: register, text: 'Sign Up'),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary)),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'Login Now',
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