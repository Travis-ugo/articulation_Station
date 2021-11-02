import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Utils/record_functions.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     // Set landscape orientation

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Oblack.Tech',
//       theme: ThemeData(
//         primarySwatch: Colors.brown,
//         primaryColor: const Color(0xFFC19151),
//       ),
//       home: const AudioRecorder(),
//     );
//   }
// }

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Tahn',
          theme: ThemeData(
            primaryColor: const Color(0xFFf6f6f6),
            textTheme: GoogleFonts.montserratTextTheme(),
          ),
          home: const Homie(),
        );
      },
    );
  }
}
