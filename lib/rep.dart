import 'package:flutter/material.dart';

import 'Pages/oblack/home_group_section.dart';
import 'Repositories/sign_in.dart';
import 'Repositories/sign_up.dart';

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
          return const HomeGroup();
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
      return AuthSignIn(toggleView: toggleView);
    } else {
      return AuthSignUp(
        toggleView: toggleView,
        registerAccount: (String email, String displayName, String password) {},
      );
    }
  }
}
