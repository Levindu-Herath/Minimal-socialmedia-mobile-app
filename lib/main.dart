import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socialmedia/Auth/auth.dart';
import 'package:socialmedia/Auth/login_or_register.dart';
import 'package:socialmedia/firebase_options.dart';
import 'package:socialmedia/pages/login_page.dart';
import 'package:socialmedia/pages/register_page.dart';
import 'package:socialmedia/theme/dark_mode.dart';
import 'package:socialmedia/theme/light_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
