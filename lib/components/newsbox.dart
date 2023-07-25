import 'package:flutter/material.dart';

class NewsBox extends StatelessWidget {
  final String imageurl, title, time, description, url;

  const NewsBox({
    super.key,
    required this.imageurl,
    required this.title,
    required this.time,
    required this.description,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
