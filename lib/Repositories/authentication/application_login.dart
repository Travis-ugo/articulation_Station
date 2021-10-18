import 'package:flutter/material.dart';
import 'package:oblack_tech/Repositories/auth_screen/sign_in.dart';

import '../oblack_sign_up.dart';
import '../sign_in.dart';

enum ApplicationLoginState {
  loggedOut,
  emailAddress,
  register,
  password,
  loggedIn,
}

class Authentication extends StatelessWidget {
  const Authentication({
    key = Key,
    required this.loginState,
    required this.email,
    required this.startLoginFlow,
    required this.verifyEmail,
    required this.signInWithEmailAndPassword,
    required this.cancelRegistration,
    required this.registerAccount,
    required this.signOut,
  });

  final ApplicationLoginState loginState;
  final String? email;
  final void Function() startLoginFlow;

  // verify user if account exist
  final void Function(
    String email,
    void Function(Exception e) error,
  ) verifyEmail;
  // signIn with Email and Password
  final void Function(
    String email,
    String password,
    void Function(Exception e) error,
  ) signInWithEmailAndPassword;
  // cancel registration
  final void Function() cancelRegistration;

  // register user account
  final void Function(
    String email,
    String displayName,
    String password,
    void Function(Exception e) error,
  ) registerAccount;

  // signOut user
  final void Function() signOut;

  @override
  Widget build(BuildContext context) {
    switch (loginState) {
      // start logIn flow
      case ApplicationLoginState.loggedOut:
        return Scaffold(
          body: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Button(
                    onPressed: () {
                      startLoginFlow();
                    },
                    child: const Text('start LogIn Flow'),
                  ),
                ],
              ),
            ),
          ),
        );
      // verify user Email if user exist
      case ApplicationLoginState.emailAddress:
        return SignInOblack(
          login: (email, password) {
            signInWithEmailAndPassword(email, password,
                (e) => _showErrorDialog(context, 'Failed to sign in', e));
          },
          callback: (email) => verifyEmail(
            email,
            (e) => _showErrorDialog(context, 'Invalid email', e),
          ),
        );
      // if Email is not registered, register Email and Password
      case ApplicationLoginState.register:
        return SignUpOblack(
          registerAccount: (email, password, displayName) {
            registerAccount(
              email,
              displayName,
              password,
              (e) => _showErrorDialog(context, 'Failed to create account', e),
            );
          },
        );
      // check user login status and display scaffold screen
      case ApplicationLoginState.loggedIn:
        return const Scaffold(
            body: Center(
          child: Text('Home Page'),
        ));

      default:
        return Row(
          children: const [
            Text("Internal error, this shouldn't happen..."),
          ],
        );
    }
  }

  // Dialog for error alert
  void _showErrorDialog(BuildContext context, String title, Exception e) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  '${(e as dynamic).message}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            StyledButton(
              colorss: Colors.white24,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'OK',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
          ],
        );
      },
    );
  }
}
