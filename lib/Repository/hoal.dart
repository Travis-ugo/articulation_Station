import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Repo/google_signin.dart';

class Clind extends StatelessWidget {
  const Clind({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
    final firstController = TextEditingController();
    final secondController = TextEditingController();
    final formKey = GlobalKey<FormState>(debugLabel: 'formState');
    //  Stream<QuerySnapshot> users = FirebaseFirestore.instance
    //   .collection('callers')
    //   .doc()//widget.subCollection
    //   .collection('call')
    //   .snapshots();
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              autocorrect: false,
              controller: firstController,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                hintText: 'First Controller',
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            const SizedBox(height: 40),
            TextFormField(
              autocorrect: false,
              controller: secondController,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: 'second Controller',
                errorBorder: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  provider.studentsData(
                    firstController.text,
                    secondController.text,
                  );
                }
              },
              child: const Text('submit'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  provider.logOut();
                }
              },
              child: const Text('log out'),
            )
          ],
        ),
      ),
    );
  }
}
