import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:teamaditya/constants.dart';
import 'package:teamaditya/screens/homepage.dart';
import 'package:teamaditya/screens/projects.dart';
import 'package:teamaditya/screens/sessions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Team Aditya',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        outlinedButtonTheme: outlinedButtonThemeData,
        textButtonTheme: textButtonThemeData,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/sessions': (context) => const SessionsScreen(),
        '/projects': (context) => const ProjectsScreen(),
      },
    );
  }
}
