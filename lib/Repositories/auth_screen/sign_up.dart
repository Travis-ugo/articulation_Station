
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    required this.registerAccount,
    required this.cancel,
    required this.email,
   
  });
  final String email;
  final void Function(String email, String displayName, String password)
      registerAccount;
  final void Function() cancel;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                      SignUpButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            widget.registerAccount(
                              _emailController.text,
                              _displayNameController.text,
                              _passwordController.text,
                            );
                           
                          }
                        },
                      
                        age: 20,
                        company: 'kingstore',
                        fullName: 'kings',
                        child: const Text(
                          'sign up',
                          style: TextStyle(
                           
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                         const Text('Already have an account? '),
                          TextButton(
                            onPressed: () {},
                            child:const  Text(
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
          Positioned(
            top: -70,
            right: -70,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                border:
                    Border.all(width: 12, color: Colors.white.withOpacity(0.8),),
                borderRadius: BorderRadius.circular(150),
              ),
              height: 250,
              width: 250,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white12.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(120),
                  border: Border.all(
                      width: 112,
                      color: Colors.deepPurpleAccent.withOpacity(0.8),
                      ),
                ),
                height: 220,
                width: 220,
              ),
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
