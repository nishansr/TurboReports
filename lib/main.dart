import 'package:flutter/material.dart';
import 'package:newsapp/screens/homescreen.dart';
import 'package:newsapp/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: AppColors.primary),
      home: HomeScreen(),
    );
  }
}
