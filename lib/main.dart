import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oblack_tech/Repo/authService.dart';
import 'package:provider/provider.dart';
import 'Repo/homie.dart';

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
      create: (context) => FireBaseAuthService(),
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
