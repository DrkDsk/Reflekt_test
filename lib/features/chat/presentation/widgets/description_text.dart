import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {

  final String title;
  final TextStyle style;
  final int maxLines;

  const DescriptionText({
    super.key,
    required this.title,
    required this.style,
    this.maxLines = 2
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
    );
  }
}