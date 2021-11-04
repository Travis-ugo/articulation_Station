import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget signButton({
  required BuildContext context,
  required void Function()? onTap,
  required String text,
  required Color textColor,
  required Color containerColor,
}) {
  return GestureDetector(
    onTap: onTap,
    child: ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 150,
        maxHeight: 50,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / (2 * 5.25),
        width: MediaQuery.of(context).size.width / (2 * 3),
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
    ),
  );
}

Widget freeBox({
  required double width,
  required Widget child,
  required void Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      padding: const EdgeInsets.all(8),
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
  required BuildContext context,
  required TextEditingController controller,
  required String hintText,
  required Widget prefixIcon,
  required bool obscureText,
  required String Function(String) validator,
}) {
  return ConstrainedBox(
    constraints: const BoxConstraints(
        maxWidth: 450, minHeight: 30, maxHeight: 50, minWidth: 120),
    child: Container(
      height: MediaQuery.of(context).size.height / (2 * 5.25),
      width: MediaQuery.of(context).size.width / 2.5,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        autocorrect: false,
        controller: controller,
        obscureText: obscureText,
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
    ),
  );
}

Widget formTile({
  required TextEditingController controller,
  required String hintText,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: TextFormField(
      autocorrect: true,
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget iconButton({
  required BuildContext context,
  required IconData icon,
  required Color iconColor,
  required void Function()? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 45,
        maxHeight: 45,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / (2 * 5.55),
        width: MediaQuery.of(context).size.height / (2 * 5.55),
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
    ),
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => SignUpOblack(signUp: () {  },),
                //   ),
                // );
              },
              text: 'sign up',
              textColor: Colors.white,
              context: context,
            ),
          ),
        ],
      );
    },
  );
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
    required this.fullName,
    required this.company,
    required this.age,
    required this.child,
    required this.onPressed,
  }) : super(key: key);
  final Widget child;
  final String fullName;
  final String company;
  final int age;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(40),
        ),
        height: 60,
        width: MediaQuery.of(context).size.width - 60,
        child: Center(child: child),
      ),
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
          TextButton(
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
