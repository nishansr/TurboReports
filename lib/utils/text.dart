import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const CustomText(
      {super.key, required this.text, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: color,
        fontSize: size,
      ),
    );
  }
}
