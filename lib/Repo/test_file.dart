import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flip_flap/Pages/raw/sound_button.dart';
import 'package:flip_flap/Repo/google_signin.dart';

class HomeTry extends StatelessWidget {
  const HomeTry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> users =
        FirebaseFirestore.instance.collection('guestbook').snapshots();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logged In'),
        actions: [
          TextButton(
            onPressed: () {
              final rovider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              rovider.logOut();
            },
            child: const Text(
              'log Out',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: users,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Error don sup');
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('Loading');
          }
          final data = snapshot.requireData;
          return ListView.builder(
            itemCount: data.size,
            itemBuilder: (contex, index) {
              return Center(
                child: SoundButton(
                  text: data.docs[index]['Name'],
                  width: 80, onTap: () {  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
