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
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
        ),
        gradient: const LinearGradient(
          colors: [Color(0xFF8A2BE2), Color(0xff2f076a)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        image: DecorationImage(
          image: const AssetImage("assets/images/bg_noise.png"),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.multiply,
          ),
        )
      ),
      child: Container(
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
                bottom: 5,
                right: 0,
                child: Image.asset("assets/images/thinking_man.png"), width: MediaQuery.sizeOf(context).width / 4,)
          ],
        ),
      ),
    );
  }
}
