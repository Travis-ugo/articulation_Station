import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Pages/user_clipboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oblack.Tech',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        primaryColor: const Color(0xFFC19151),
      ),
      home: const SelectedUserClipBoard(),
    );
  }
}
