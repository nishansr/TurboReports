import 'package:flutter/material.dart';
import 'package:newsapp/utils/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: CustomText(
          text: "TurboReporters",
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
