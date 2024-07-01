import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signup_page/Forgot_Password.dart';
// import 'package:signup_page/Homepage.dart';
import 'package:signup_page/SignInNew.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signIn() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email.text, password: password.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/background.png',
              fit: BoxFit
                  .cover, // Adjust the image to cover the entire background
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              left: 40,
              right: 40,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(height: 160, 'assets/sign.png'),
                  // Image.asset(height: 100,'assets/login.png'),
                  const Text(
                    'LogIn',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Roboto',
                      letterSpacing: 1.2,
                    ),
                  ),

                  SizedBox(
                    height: 60,
                  ),

                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Enter Your Name",
                        hintStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.white),
                        ),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.8),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "Enter your Email",
                        hintStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.white),
                        ),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.8),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: TextField(
                      obscureText: true,
                      controller: password,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                        ),
                        hintText: "Enter Your Password",
                        hintStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.white),
                        ),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.8),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: signIn,
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 30),

                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Get.to(() => Signinnew());
                          },
                          child: Text(
                            "Register Now",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(() => ForgotPassword());
                          },
                          child: Text(
                            "Forget Password",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                      SizedBox(height: 13)
                    ],
                  ),
                  SizedBox(height: 72)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
