import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {

  final Color color;
  final String title;
  final VoidCallback onTap;
  final bool isEnabled;

  const SubmitButton({
    super.key,
    required this.color,
    required this.title,
    required this.onTap,
    required this.isEnabled
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title.toUpperCase(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
            ),
            const SizedBox(width: 15)
          ],
        ),
      ),
    );
  }
}
