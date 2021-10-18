import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  const Email(
      {required this.email, required this.login, required this.callback});
  final void Function(String email) callback;

  final String email;
  final void Function(String email, String password) login;
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_EmailFormState');
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Welcome\nBack\n\n',
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                TextSpan(
                  text: 'explore community love',
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // An Initialized widget for easy computation.
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
                      hintText: 'Email',
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
                // An Initialized widget for easy computation.
                Field(
                  child: TextFormField(
                    //  maxLength: 10,
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      prefixIcon: Icon(CupertinoIcons.lock, size: 15),
                      suffixIcon: Icon(CupertinoIcons.eye_slash, size: 15),
                      hintText: 'Password',
                    ),
                    validator: (values) {
                      if (values!.length < 4) {
                        return ' password too short';
                      }
                      if (values.isEmpty) {
                        return 'Enter a valid password to continue';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 25),
                Button(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      widget.callback(_emailController.text);
                      widget.login(
                        _emailController.text,
                        _passwordController.text,
                      );
                    }
                  },
                  child: const Text(
                    'sign in',
                    style: TextStyle(
                     
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text('Dont have an account? '),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        ' Sing up',
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
    );
  }
}

class Field extends StatelessWidget {
  const Field({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 60,
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        border: Border.all(
          width: 1.5,
          color: Colors.deepPurpleAccent,
        ),
      ),
      child: Center(child: child),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);
  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(60),
        ),
        height: 60,
        width: MediaQuery.of(context).size.width - 70,
        child: Center(child: child),
      ),
    );
  }
}
