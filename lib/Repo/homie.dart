import 'package:firebase_auth/firebase_auth.dart';
import 'package:flip_flap/Pages/oblack/watch_tutorials.dart';
import 'package:flip_flap/Repo/sign_in.dart';
import 'package:flip_flap/Repo/sign_up.dart';
import 'package:flutter/material.dart';

class Homie extends StatelessWidget {
  const Homie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          return const Contain();
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Something Went wrong'),
          );
        } else {
          return const AuthenicationScreen();
        }
      },
    );
  }
}

class AuthenicationScreen extends StatefulWidget {
  const AuthenicationScreen({Key? key}) : super(key: key);

  @override
  _AuthenicationScreenState createState() => _AuthenicationScreenState();
}

class _AuthenicationScreenState extends State<AuthenicationScreen> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return  SignInOblack(toggleView: toggleView); 
    } else {
      return SignUp(
        toggleView: toggleView,
        registerAccount: (String email, String displayName, String password) {},
      );
    }
  }
}
