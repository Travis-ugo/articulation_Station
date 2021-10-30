import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'authentication/widget.dart';
import 'google_signin.dart';

class AuthSignUp extends StatefulWidget {
  const AuthSignUp({
    Key? key,
    required this.registerAccount,
    this.toggleView,
  }) : super(key: key);
  final void Function()? toggleView;
  final void Function(String email, String displayName, String password)
      registerAccount;

  @override
  State<AuthSignUp> createState() => _AuthSignUpState();
}

class _AuthSignUpState extends State<AuthSignUp> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_RegisterFormState');
  final _emailController = TextEditingController();
  final _displayNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final sizedBox = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: MediaQuery.of(context).size.height,
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
                      context: context,
                      onTap: widget.toggleView,
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
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFC19151),
                        ),
                      ),
                      SizedBox(height: sizedBox.height / 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          iconButton(
                            context: context,
                            icon: FontAwesomeIcons.apple,
                            iconColor: Colors.blueAccent,
                            onTap: () {},
                          ),
                          const SizedBox(width: 10),
                          iconButton(
                            context: context,
                            icon: FontAwesomeIcons.google,
                            iconColor: const Color(0xFFB20000),
                            onTap: () {
                              final provider =
                                  Provider.of<GoogleSignInProvider>(context,
                                      listen: false);
                              provider.googleLogin();
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: sizedBox.height / 25),
                      freeBox(
                        width: 260,
                        onTap: () {},
                        child: const Text(
                          'or use your phone number for registration',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: sizedBox.height / 17),
                      formContainer(
                        context: context,
                        obscureText: false,
                        controller: _displayNameController,
                        hintText: 'Name',
                        prefixIcon: const Icon(Icons.person_outline),
                        validator: (values) {
                          if (values.isEmpty) {
                            return 'Enter a valid email to continue';
                          }
                          return 'null';
                        },
                      ),
                      SizedBox(height: sizedBox.height / (4 * 10)),
                      formContainer(
                        context: context,
                        obscureText: false,
                        controller: _emailController,
                        hintText: 'E-mail',
                        prefixIcon: const Icon(Icons.email),
                        validator: (values) {
                          if (values.isEmpty) {
                            return 'Enter a valid email to continue';
                          }
                          return 'null';
                        },
                      ),
                      SizedBox(height: sizedBox.height / (4 * 10)),
                      formContainer(
                        context: context,
                        obscureText: true,
                        controller: _passwordController,
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons.remove_red_eye),
                        validator: (values) {
                          if (values.length < 4) {
                            return 'password too short';
                          }
                          if (values.isEmpty) {
                            return 'Enter a valid password to continue';
                          }
                          return 'null';
                        },
                      ),
                      SizedBox(height: sizedBox.height / 17),
                      signButton(
                        context: context,
                        onTap: () async {
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          provider.registerAccount(
                            displayName: _displayNameController.text,
                            email: _emailController.text,
                            password: _passwordController.text,
                          );
                        },
                        textColor: Colors.white,
                        containerColor: const Color(0xFFB20000),
                        text: 'SIGN UP',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
