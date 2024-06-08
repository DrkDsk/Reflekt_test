import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/decorations.dart';
import 'package:reflekt_test/core/constants/styles.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 150,
      decoration: profileTopCardDecoration,
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 45,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/medpass_image.png",
                  height: 50,
                ),
                const SizedBox(width: 25),
                SizedBox(
                  width: 200,
                  child: Text(
                    'Complete Your Profile',
                    style: profileTextStyle,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("assets/images/flowers_image.png"))
        ],
      ),
    );
  }
}
