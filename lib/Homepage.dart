import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Signout() async {
    await FirebaseAuth.instance.signOut();
  }

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          actions: [
            Container(
              padding:EdgeInsets.all(5),
              child: FloatingActionButton(
                
backgroundColor: Colors.white,                
                onPressed: Signout,
                child: Container(
                child: const Icon(Icons.logout,color: Colors.black,)),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 300),
                child: Text('${user?.email}'),
              ),
            ),

            
          ],
        ));
  }
}
