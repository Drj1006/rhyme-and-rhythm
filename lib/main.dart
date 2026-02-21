import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'app_theme.dart';



void main() {
  runApp(const FinalApp());
}

class FinalApp extends StatelessWidget {
  const FinalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rhyme and Rhythm",
      /*theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),*/

      theme: AppTheme.lightTheme,

      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
