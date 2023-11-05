import 'package:flutter/material.dart';
import 'package:teng_go_app/view/splash_screen/splash-screen.dart';
import 'package:teng_go_app/core/theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teng-Go App',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: const SplashScreen(),
    );
  }
}