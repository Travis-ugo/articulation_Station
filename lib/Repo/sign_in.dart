import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'authentication/widget.dart';
import 'google_signin.dart';

class SignInOblack extends HookWidget {
  const SignInOblack({
    this.callback,
    this.login,
    this.toggleView,
    Key? key,
  }) : super(key: key);
  final void Function(String email)? callback;
  final Function()? toggleView;
  final void Function(String email, String password)? login;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Exxit form line
      onTap: () {},
      child: Scaffold(
        body: SingleChildScrollView(
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: containeer(
                    signIn: login,
                    callback: callback,
                    context: context,
                  ),
                ),
              ),
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
                        "Hello There!",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 17),
                      const Text(
                        "Enter your personal details to\nstart your journey with us.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 35),
                      signButton(
                        onTap: toggleView,
                        text: 'SIGN UP',
                        textColor: const Color(0xFFB20000),
                        containerColor: Colors.transparent,
                        context: context,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget containeer({
    required BuildContext context,
    required final void Function(String email)? callback,
    required final void Function(String email, String password)? signIn,
  }) {
    final _formKey = GlobalKey<FormState>(debugLabel: '_EmailFormState');

    final _signInController = TextEditingController();
    final _signInPassWordController = TextEditingController();
    final sizedBox = MediaQuery.of(context).size;
    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);

    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(height: sizedBox.height / 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconButton(
                context: context,
                icon: FontAwesomeIcons.apple,
                iconColor: Colors.black54,
                onTap: () {},
              ),
              const SizedBox(width: 10),
              iconButton(
                context: context,
                icon: FontAwesomeIcons.google,
                iconColor: const Color(0xFFB20000),
                onTap: () {
                  provider.googleLogin();
                },
              ),
            ],
          ),
          SizedBox(height: sizedBox.height / 25),
          freeBox(
            width: 180,
            onTap: () {},
            child: const Text(
              'or use your phone number',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: sizedBox.height / 17),
          formContainer(
            controller: _signInController,
            hintText: 'E-mail',
            prefixIcon: const Icon(Icons.email),
            validator: (values) {
              if (values.isEmpty) {
                return 'Enter a valid email to continue';
              }
              return 'null';
            },
            context: context,
            obscureText: false,
          ),
          SizedBox(height: sizedBox.height / (4 * 10)),
          formContainer(
            context: context,
            controller: _signInPassWordController,
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
            obscureText: true,
          ),
          SizedBox(height: sizedBox.height / 17),
          freeBox(
            width: 130,
            onTap: () {},
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: sizedBox.height / 17),
          signButton(
            context: context,
            onTap: () async {
              provider.verifyEmail(() {}, _signInController.text);
              await provider.signInWithEmailAndPassword(
                email: _signInController.text,
                password: _signInPassWordController.text,
              );
            },
            textColor: Colors.white,
            containerColor: const Color(0xFFB20000),
            text: 'SIGN IN',
          ),
        ],
      ),
    );
  }
}
