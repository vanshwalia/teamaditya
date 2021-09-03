import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    loadData();
    super.initState();
  }

  Future<Timer> loadData() async {
    return Timer(const Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.pushNamed(
      context,
      '/home',
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator()
      ),
    );
  }
}