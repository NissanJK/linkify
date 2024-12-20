import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const LinkifyApp());
}

class LinkifyApp extends StatelessWidget {
  const LinkifyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linkify Chat',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'GoogleFonts.lato().fontFamily',
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
