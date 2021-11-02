import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DataBaseService {
  final String? uid;
  DataBaseService({this.uid});
  final CollectionReference brewCollection =
      FirebaseFirestore.instance.collection('Users');

  Future upDateData(String name, String photoUrl) async {
    return await brewCollection.doc(uid).set({
      'Name': name,
      'PhotoUrl': photoUrl,
    });
  }
  Future upData(String name, String photoUrl) async {
    return await brewCollection.add(<String, dynamic>{
      'text': 'hi',
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'userId': FirebaseAuth.instance.currentUser!.uid,
    });
  }

//  Stream<QuerySnapshot> get crews {
//     return brewCollection.get();
//   }
 
  Stream<QuerySnapshot> get brews {
    return brewCollection.snapshots();
  }
}

