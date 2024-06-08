import 'package:flutter/material.dart';

class AdImage extends StatelessWidget {
  const AdImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
      height: 180,
      image: AssetImage("assets/images/thinking_man.png"),
      fit: BoxFit.fill,
    );
  }
}