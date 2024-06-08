import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/color.dart';

class Suggestion {

  final Icon icon;
  final String title;

  const Suggestion({
    required this.icon,
    required this.title
  });
}

List<Suggestion> suggestionItems = [
  const Suggestion(
      icon: Icon(
        Icons.sports_gymnastics,
        color: textColor,
      ),
      title: "5 ideas to reduce my weight"),
  const Suggestion(
    icon: Icon(
      Icons.apple,
      color: textColor,
    ),
    title: "Easy paste recipes with few ingredients"
  )
];