import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signup_page/Homepage.dart';
import 'package:signup_page/wrapper.dart';

class Signinnew extends StatefulWidget {
  const Signinnew({super.key});

  @override
  State<Signinnew> createState() => _SigninnewState();
}

class _SigninnewState extends State<Signinnew> {
  TextEditingController email=TextEditingController();
TextEditingController password=TextEditingController();
Register() async{


  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
Get.offAll(()=>Wrapper());
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 50,),
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
          TextField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              hintText: "Enter your Password",
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
            onPressed: () {
             Register();
        Get.to(()=>Homepage());

             
            },
            style: ButtonStyle(enableFeedback: true),
            child: Text(
              "Register Now",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
