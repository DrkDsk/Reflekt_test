import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/color.dart';
import 'package:reflekt_test/core/constants/styles.dart';
import 'package:reflekt_test/features/chat/presentation/widgets/description_text.dart';
import 'package:reflekt_test/features/chat/presentation/widgets/mid_button.dart';

class AdContent extends StatelessWidget {
  const AdContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DescriptionText(
            title: '5 ways to reduce my weight',
            style: midTextStyle,
            maxLines: 2,
          ),
          DescriptionText(
              title: 'Tap "Start" to begin',
              style: tinyTextStyle
          ),
          const MidButton(
            imageAsset: "assets/images/arrow_right.png",
            color: buttonColor,
            title: "Start"
          )
        ],
      ),
    );
  }
}