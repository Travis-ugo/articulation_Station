import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'auth_screen/sign_in.dart';
import 'sign_in.dart';

class SignUpOblack extends StatefulWidget {
  const SignUpOblack({
    Key? key,
    required this.registerAccount,
  }) : super(key: key);

  final void Function(String email, String displayName, String password)
      registerAccount;

  @override
  State<SignUpOblack> createState() => _SignUpOblackState();
}

class _SignUpOblackState extends State<SignUpOblack> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_RegisterFormState');
  final _emailController = TextEditingController();
  final _displayNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInOblack(
                              callback: (String email) {},
                              login: (email, password) {},
                            ),
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
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Form(
                  key: _formKey,
                  child: Column(
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
                      formContainer(
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
                      formContainer(
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
                      signButton(
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            widget.registerAccount(
                              _emailController.text,
                              _displayNameController.text,
                              _passwordController.text,
                            );
                          }
                        },
                        textColor: Colors.white,
                        containerColor: const Color(0xFFB20000),
                        text: 'SIGN UP',
                      ),
                    ],
                  ),
                ),
                // signInBlack(

                // registerAccount: widget.registerAccount,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget signInBlack({BuildContext? context,
// required final void Function(String email,String displayName, String password) registerAccount,

// }) {

//   return
// }

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
            ),
          ),
        ],
      );
    },
  );
}

class SignUpTO extends StatefulWidget {
  const SignUpTO({
    required this.registerAccount,
    required this.cancel,
    required this.email,
  });
  final String email;
  final void Function(String email, String displayName, String password)
      registerAccount;
  final void Function() cancel;

  @override
  _SignUpTOState createState() => _SignUpTOState();
}

class _SignUpTOState extends State<SignUpTO> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_RegisterFormState');
  final _emailController = TextEditingController();
  final _displayNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.text = widget.email;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Create an\naccount\n\n',
                        style: TextStyle(
                          fontSize: 42,
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text: 'Join our exciting community',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Field(
                        child: TextFormField(
                          controller: _displayNameController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            prefixIcon: Icon(CupertinoIcons.person, size: 15),
                            hintText: 'Name',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter your account name';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 25),
                      Field(
                        child: TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            prefixIcon: Icon(CupertinoIcons.mail, size: 15),
                            hintText: 'Enter your email',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter your email address to continue';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 25),
                      Field(
                        child: TextFormField(
                          controller: _passwordController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            prefixIcon: Icon(CupertinoIcons.lock, size: 15),
                            hintText: 'Password',
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter your password';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 25),
                      signButton(
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            widget.registerAccount(
                              _emailController.text,
                              _displayNameController.text,
                              _passwordController.text,
                            );
                          }
                        },
                        textColor: Colors.white,
                        containerColor: const Color(0xFFB20000),
                        text: 'SIGN UP',
                      ),
                      Row(
                        children: [
                          const Text('Already have an account? '),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              ' Sing in',
                              style: TextStyle(
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
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
