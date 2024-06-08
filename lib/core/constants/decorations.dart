import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/color.dart';

BoxDecoration cardBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: 1,
        blurRadius: 6,
        offset: const Offset(0, 3),
      ),
    ]
);

BoxDecoration profileTopCardDecoration = const BoxDecoration(
  borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20)
  ),
);

BoxDecoration iconDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    border: Border.all(
      color: textColor, // Border color
      width: 2.5, // Border width
    )
);