import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Pages/oblack/select_sound.dart';

class SoundButton extends StatelessWidget {
  const SoundButton({
    Key? key,
    required this.width,
    required this.text,
  }) : super(key: key);

  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SelectedSound(),
          ),
        );
      },
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: width / 6.666, left: width / 6.666),
            child: Center(
              child: Transform(
                alignment: FractionalOffset.center,
                transform: Matrix4.identity()..rotateZ(15 * 3.1415927),
                child: ClipPath(
                  clipper: ClipB(width: width),
                  child: Container(
                    height: width - 20,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.1),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()..rotateZ(15 * 3.1415927),
              child: ClipPath(
                clipper: ClipB(width: width),
                child: Container(
                  height: width - 20,
                  width: width,
                  color: const Color(0xFFC19151),
                ),
              ),
            ),
          ),
          Center(
            child: ClipPath(
              clipper: ClipB(width: width),
              child: Container(
                height: width - 20,
                width: width,
                color: const Color(0xFF7E4900),
              ),
            ),
          ),
          Center(
            child: Container(
              height: width / 1.758 - 5,
              width: width / 1.758,
              color: const Color(0xFFF0D0A6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: width / 4.25,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFA5660D),
                    ),
                  ),
                  Text(
                    '/$text/',
                    style: TextStyle(
                      fontSize: width / 6.25,
                      color: const Color(0xFFA5660D),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
                  width: 80,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
