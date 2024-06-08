import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/color.dart';

class BackButtonAppBar extends StatelessWidget {
  const BackButtonAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    void back() {
      Navigator.pop(context);
    }

    return GestureDetector(
      onTap: back,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: buttonColor, // Border color
          ),
          borderRadius: BorderRadius.circular(8), // Border radius
        ),
        child: const Icon(
          Icons.arrow_back,
          color: buttonColor,
        ),
      ),
    );
  }
}