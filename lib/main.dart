import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:teamaditya/constants.dart';
import 'package:teamaditya/screens/bottomnavigation.dart';
import 'screens/homepage.dart';

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
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                  BorderSide(color: kPrimaryColor, width: 1.5)),
              overlayColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered)) return kRed;
                  if (states.contains(MaterialState.focused) ||
                      states.contains(MaterialState.pressed)) return kRed;
                  return kAccentColor; // Defer to the widget's default.
                },
              ),
              foregroundColor: MaterialStateColor.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered))
                    return kPrimaryColor;
                  if (states.contains(MaterialState.focused) ||
                      states.contains(MaterialState.pressed))
                    return kPrimaryColor;
                  return kAccentColor; // Defer to the widget's default.
                },
              ),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0))),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                  BorderSide(color: kAccentColor, width: 1.5)),
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => kAccentColor),
              overlayColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered)) return kRed;
                  if (states.contains(MaterialState.focused) ||
                      states.contains(MaterialState.pressed)) return kRed;
                  return kAccentColor; // Defer to the widget's default.
                },
              ),
              foregroundColor:
                  MaterialStateColor.resolveWith((states) => kPrimaryColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0))),
            ),
          )),
      home: const BottomNavigation(),
    );
  }
}
