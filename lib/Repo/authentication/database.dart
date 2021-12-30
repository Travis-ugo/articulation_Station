import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DataBaseService {
  final String? uid;
  DataBaseService({this.uid});
  final brewCollection = FirebaseFirestore.instance.collection('users');

  Future upDateData(String name, String datatext) async {
    return await brewCollection.doc(uid).set({
      'Name': name,
      'Datatext': datatext,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
    });
  }
  // User? user = FirebaseAuth.instance.currentUser;

  // Future uDateData(String name, String photoUrl) async {
  //   return await FirebaseFirestore
  //   .instance
  //   .collection('orders')
  //   .doc(user!.uid)
  // .collection(
  //     "user_orders")
  //   .add({
  //       //add your data that you want to upload
  //       });
  // }
  Future upData(String name, String photoUrl) async {
    return await brewCollection.add(<String, dynamic>{
      'text': 'hi',
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'userId': FirebaseAuth.instance.currentUser!.uid,
    });
  }
}
