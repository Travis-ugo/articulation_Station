import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }

  Future<void> init() async {
    await Firebase.initializeApp();

    FirebaseAuth.instance.userChanges().listen((user) {
      // if (user != null) {
      //   _loginState = ApplicationLoginState.loggedIn;
      //   _guestBookSubscription = FirebaseFirestore.instance
      //       .collection('guestbook')
      //       .orderBy('timestamp', descending: true)
      //       .snapshots()
      //       .listen((snapshot) {
      //     _guestBookMessages = [];
      //     for (final document in snapshot.docs) {
      //       _guestBookMessages.add(
      //         GuestBookMessage(
      //           name: document.data()['name'] as String,
      //           message: document.data()['text'] as String,
      //           numbers: document.data()['num'] as String,
      //         ),
      //       );
      //     }
      //     notifyListeners();
      //   });
      // } else {
      //   _loginState = ApplicationLoginState.loggedOut;
      //   _guestBookMessages = [];
      //   _guestBookSubscription?.cancel();
      // }
      // notifyListeners();
    });
  }

  // Add messages to fireStore collection.
  // Future<DocumentReference> addMessageToGuestBook(String message) {
  //   if (_loginState != ApplicationLoginState.loggedIn) {
  //     throw Exception('Must be logged in');
  //   }

  //   return FirebaseFirestore.instance
  //       .collection('guestbook')
  //       .add(<String, dynamic>{
  //     'text': FirebaseAuth.instance.currentUser!.displayName,
  //     'timestamp': DateTime.now().millisecondsSinceEpoch,
  //     'name': FirebaseAuth.instance.currentUser!.displayName,
  //     'userId': FirebaseAuth.instance.currentUser!.uid,
  //   });
  // }

  ApplicationLoginState _loginState = ApplicationLoginState.loggedOut;
  ApplicationLoginState get loginState => _loginState;

  String? _email;
  String? get email => _email;

  // StreamSubscription<QuerySnapshot>? _guestBookSubscription;
  // List<GuestBookMessage> _guestBookMessages = [];
  // List<GuestBookMessage> get guestBookMessages => _guestBookMessages;

  int _attendees = 0;
  int get attendees => _attendees;

  void startLoginFlow() {
    _loginState = ApplicationLoginState.emailAddress;
    notifyListeners();
  }

  // check for existing Email and password
  Future<void> verifyEmail(
    String email,
    void Function(FirebaseAuthException e) errorCallback,
  ) async {
    try {
      var methods =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
      if (methods.contains('password')) {
        _loginState = ApplicationLoginState.emailAddress;
      } else {
        _loginState = ApplicationLoginState.register;
      }
      _email = email;
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      errorCallback(e);
    }
  }

  // SignIn user with Email and Password
  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
    void Function(FirebaseAuthException e) errorCallback,
  ) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      errorCallback(e);
    }
  }

  // Terminate user registration
  void cancelRegistration() {
    _loginState = ApplicationLoginState.emailAddress;
    notifyListeners();
  }

  // Register user Email and Password
  Future<void> registerAccount(
      String email,
      String displayName,
      String password,
      void Function(FirebaseAuthException e) errorCallback) async {
    try {
      var credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      await credential.user!.updateDisplayName(displayName);
    } on FirebaseAuthException catch (e) {
      errorCallback(e);
    }
  }

  // SignOut user account
  void signOut() {
    FirebaseAuth.instance.signOut();
  }
}
