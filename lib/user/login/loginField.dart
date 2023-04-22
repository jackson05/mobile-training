
import 'package:flutter/material.dart';

class LoginField extends StatelessWidget{
  const LoginField({super.key});

  @override
  Widget build(BuildContext context) => const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 2.5),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            fillColor: Colors.grey,
            filled: true

        ),

      ),
    );
  
}