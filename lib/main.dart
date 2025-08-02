import 'package:flutter/material.dart';
import 'package:youtube_letterboxd_ui/screens/boarding_screen.dart';
import 'package:youtube_letterboxd_ui/services/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const BoardingScreen(),
    );
  }
}
