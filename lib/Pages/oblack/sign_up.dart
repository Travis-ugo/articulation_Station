import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'oblack_sign_in.dart';

class SignInOblack extends StatelessWidget {
  const SignInOblack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Exxit form line
      onTap: () {},
      child: Scaffold(
        body: Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: containeer(context),
              ),
            ),
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpOblack(),
                          ),
                        );
                      },
                      text: 'SIGN UP',
                      textColor: const Color(0xFFB20000),
                      containerColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget containeer(BuildContext context) {
  final _emailController = TextEditingController();
  final _passWordController = TextEditingController();
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
      formContainer(
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
        obscureText: false,
      ),
      formContainer(
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
        obscureText: true,
      ),
      freeBox(
        height: 35,
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
      signButton(
        onTap: () {
          showErrorDialog(context);
        },
        textColor: Colors.white,
        containerColor: const Color(0xFFB20000),
        text: 'SIGN IN',
      ),
    ],
  );
}

Widget signButton({
  required void Function()? onTap,
  required String text,
  required Color textColor,
  required Color containerColor,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 43,
      width: 140,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color(0xFFB20000), width: 1.5),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}

Widget freeBox({
  required double height,
  required double width,
  required Widget child,
  required void Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: height,
      width: width,
      child: Center(
        child: child,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset.fromDirection(
              1.5,
              4,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget formContainer({
  required TextEditingController controller,
  required String hintText,
  required Widget prefixIcon,
  required bool obscureText,
  required String Function(String?)? validator,
}) {
  return Container(
    width: 320,
    height: 40,
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(5),
    ),
    child: TextFormField(
      autocorrect: false,
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.grey.shade500,
        ),
      ),
    ),
  );
}

Widget iconButton({
  required IconData icon,
  required Color iconColor,
  required void Function()? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: const Color(0xFFC19151),
        ),
      ),
      child: Center(
        child: FaIcon(
          icon,
          color: iconColor,
          size: 16,
        ),
      ),
    ),
  );
}
