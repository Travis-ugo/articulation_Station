import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class GoogleSign extends StatelessWidget {
  const GoogleSign({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const Text('Testing Google signIn'),
           const Text('Try and erro block'),
           ElevatedButton.icon(
           onPressed: () {
             final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
             provider.googleLogin();
           },  
           icon: const FaIcon(FontAwesomeIcons.google, 
           color: Colors.red,), 
           label: const Text('Google sign in'), 
           style: ElevatedButton.styleFrom(
             minimumSize: const Size(300, 50),
             primary: Colors.grey[800],
           ),),
        ],),
      ),
    );
  }
}

class GoogleSignInProvider extends ChangeNotifier {
  // Trigger the authentication flow
  final googleSignIn =  GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!; 

  Future googleLogin() async{
    try {
      final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;

    final GoogleSignInAuthentication? googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
     );
      await FirebaseAuth.instance.signInWithCredential(credential);
    
    } on FirebaseException catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }

  Future logOut() async{
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }  
  }


class Homie extends StatelessWidget {
  const Homie({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder( 
      stream:  FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting)
        {
          return const  Center(child: CircularProgressIndicator(),);
        }
        else  if (snapshot.hasError)
        {
          return const  Center(child: Text('Something Went wrong'),);
        }
       else  if (snapshot.hasData)
        {
          return const  Center(child: LoggedIn(),);
        }
        else{
          return const GoogleSign();
        }
       
      }
    );
  }
}


class LoggedIn extends StatelessWidget {
  const LoggedIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(appBar: AppBar(title:const  Text('Logged In'),actions: [
      TextButton(onPressed: (){
        final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
        provider.logOut();
        }, child: const Text('log Out', style: TextStyle(color: Colors.white),),
       ),
      ], 
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        CircleAvatar(
        backgroundImage: NetworkImage(user.photoURL!),
            ),
        const SizedBox(), 
        Text(user.phoneNumber.toString()),
        Text(user.displayName!),
        Text(user.email!),
          ],
        ),
    ),
    );
  }
}
