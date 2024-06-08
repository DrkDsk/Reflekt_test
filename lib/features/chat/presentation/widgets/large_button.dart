import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {

  final Color color;
  final String title;
  final String? imageAsset;
  final VoidCallback onTap;

  const LargeButton({
    super.key,
    required this.color,
    required this.title,
    this.imageAsset,
    required this.onTap
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
            const SizedBox(width: 15),
            if (imageAsset!=null) Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Image(
                image: AssetImage(imageAsset!),
              ),
            )
          ],
        ),
      ),
    );
  }
}
