import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reflekt_test/core/constants/decorations.dart';
import 'package:reflekt_test/features/chat/presentation/widgets/ad_content.dart';
import 'package:reflekt_test/features/chat/presentation/widgets/ad_image.dart';

class AdCard extends StatelessWidget {
  const AdCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: cardBoxDecoration,
      child: const SizedBox(
        height: 180,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: AdContent()
            ),
            Expanded(
                child: AdImage()
            )
          ],
        ),
      ),
    );
  }
}
