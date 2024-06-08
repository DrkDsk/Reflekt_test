import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/color.dart';

BoxDecoration cardBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.shade300,
        blurRadius: 1
      ),
      BoxShadow(
        color: Colors.grey.shade300,
        blurRadius: 1
      ),
    ]
);

BoxDecoration profileTopCardDecoration = const BoxDecoration(
  borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20)
  ),
  gradient: LinearGradient(
    colors: [Color(0xFF4B0082), Color(0xFF8A2BE2)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
);

BoxDecoration iconDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    border: Border.all(
      color: textColor, // Border color
      width: 2.5, // Border width
    )
);