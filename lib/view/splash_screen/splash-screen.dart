import 'package:flutter/material.dart';
import 'package:teng_go_app/core/theme.dart';
import 'package:teng_go_app/view/auth_page/login_page.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorgreen,
      body: Center(
        child: Container(
          child: Image.asset('assets/images/teng-go-icon.png', height: 67, width: 278,),
        ),
      ),
    );
  }
}
