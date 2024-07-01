import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
TextEditingController email=TextEditingController();

Forget()async{
await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);

}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 204, 204),
appBar: AppBar(backgroundColor: Colors.blue, title: Text("Forgot Password ?")),
      body: Column(
        children: [
          SizedBox(height: 20,),
          TextField(
            controller: email,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              hintText: "Enter your Email",
              hintStyle: TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(width: 2.0, color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(width: 2.0, color: Colors.white),
              ),
              filled: true,
              fillColor: Colors.black.withOpacity(0.8),
            ),
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10,),
           ElevatedButton(
                    onPressed: (){
                      Forget();
                      

                    },
                    child: Text(
                      "Reset Password",
                       style: TextStyle(color: Colors.black),
                    ),
                  ),

      
        ],
      ),
    );
  }
}