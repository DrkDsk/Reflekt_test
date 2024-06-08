import 'package:flutter/material.dart';

class MidButton extends StatelessWidget {

  final Color color;
  final String title;
  final String? imageAsset;

  const MidButton({
    super.key,
    required this.color,
    required this.title,
    this.imageAsset
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 125,
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
                fontSize: 15
            ),
          ),
          const SizedBox(width: 15),
          if (imageAsset!=null) Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Image(
              image: AssetImage(imageAsset!),
            ),
          )
        ],
      ),
    );
  }
}
