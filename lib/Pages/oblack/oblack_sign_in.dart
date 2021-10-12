import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oblack_tech/Pages/oblack/sign_up.dart';

class SignUpOblack extends StatelessWidget {
  const SignUpOblack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFFC19151),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 17),
                  const Text(
                    "Please sign in with your\npersonal info to stay connected",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 35),
                  signButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInOblack(),
                        ),
                      );
                    },
                    text: 'SIGN IN',
                    textColor: const Color(0xFFB20000),
                    containerColor: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: signInBlack(context),
            ),
          ),
        ],
      ),
    );
  }
}

Widget signInBlack(BuildContext context) {
  final _emailController = TextEditingController();
  final _passWordController = TextEditingController();
  final _nameController = TextEditingController();
  // final TextEditingController _controller;

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text(
        'Sign In',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Color(0xFFC19151),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconButton(
            icon: FontAwesomeIcons.facebookF,
            iconColor: Colors.blueAccent,
            onTap: () {},
          ),
          const SizedBox(width: 10),
          iconButton(
            icon: FontAwesomeIcons.google,
            iconColor: const Color(0xFFB20000),
            onTap: () {},
          ),
        ],
      ),
      freeBox(
        height: 30,
        width: 260,
        onTap: () {},
        child: const Text(
          'or use your phone number for registration',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
      ),
      formContainer(
        obscureText: false,
        controller: _nameController,
        hintText: 'Name',
        prefixIcon: const Icon(Icons.person_outline),
        validator: (values) {
          if (values! == '@') {
            return 'invalid E-main';
          }
          if (values.isEmpty) {
            return 'Enter a valid email to continue';
          }
          return 'null';
        },
      ),
      formContainer(
        obscureText: false,
        controller: _emailController,
        hintText: 'E-mail',
        prefixIcon: const Icon(Icons.email),
        validator: (values) {
          if (values! == '@') {
            return 'invalid E-main';
          }
          if (values.isEmpty) {
            return 'Enter a valid email to continue';
          }
          return 'null';
        },
      ),
      formContainer(
        obscureText: true,
        controller: _passWordController,
        hintText: 'Password',
        prefixIcon: const Icon(Icons.remove_red_eye),
        validator: (values) {
          if (values!.length < 4) {
            return 'password too short';
          }
          if (values.isEmpty) {
            return 'Enter a valid password to continue';
          }
          return 'null';
        },
      ),
      signButton(
        onTap: () async {
          showErrorDialog(context);
        },
        textColor: Colors.white,
        containerColor: const Color(0xFFB20000),
        text: 'SIGN UP',
      ),
    ],
  );
}

void showErrorDialog(BuildContext context) {
  showDialog<void>(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: const [
              Center(
                child: Text(
                  'Account doent exist\n sign up',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w100,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Center(
            child: signButton(
              containerColor: const Color(0xFFB20000),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpOblack(),
                  ),
                );
              },
              text: 'sign up',
              textColor: Colors.white,
            ),
          ),
        ],
      );
    },
  );
}
