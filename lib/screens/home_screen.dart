import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_app/screens/signin_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
FirebaseAuth.instance.signOut().then((value) {
  print("Signed Out");
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
});


        }, child: Text("logout")),
      ),
    );
  }
}