import 'package:flutter/material.dart';
import 'package:minder/user/login/loginField.dart';

class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.grey[300],
      body: SafeArea (
        child: Center(
          child:Column(
            children: const [
              SizedBox(height: 50),
              Icon(
                Icons.lock,
                size: 100, ),
              SizedBox(height: 50,),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 16,
                color:  Colors.grey,
                ),
              ),
              SizedBox(height: 25,),

              LoginField(),
              SizedBox(height: 10,),
              LoginField(),


            ],
          ) ,
        ),
      ),

    );
  }
  
}