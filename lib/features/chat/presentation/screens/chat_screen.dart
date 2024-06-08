import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/color.dart';
import 'package:reflekt_test/core/constants/strings.dart';
import 'package:reflekt_test/core/constants/styles.dart';
import 'package:reflekt_test/features/chat/presentation/widgets/description_text.dart';
import 'package:reflekt_test/features/chat/presentation/widgets/large_button.dart';
import 'package:reflekt_test/features/chat/presentation/widgets/listview_items.dart';
import 'package:reflekt_test/features/home/presentation/widgets/back_button_app_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white.withOpacity(0.99),
          title: Row(
            children: [
              const BackButtonAppBar(),
              const SizedBox(width: 10),
              Column(
                children: [
                  DescriptionText(
                      title: appBarTitle,
                      style: appBarTextStyle
                  )
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white.withOpacity(0.99),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                DescriptionText(
                    title: titleText,
                    style: titleTextStyle
                ),
                const SizedBox(height: 25),
                DescriptionText(
                  title: descriptionText,
                  style: descriptionTextStyle,
                ),
                const SizedBox(height: 25),
                LargeButton(
                  onTap: () {},
                  imageAsset: "assets/images/message_bubbles.png",
                  color: buttonColor,
                  title: startNewChatText,
                ),
                const SizedBox(height: 40),
                DescriptionText(
                    title: recentChatsText,
                    style: smallTextStyle
                ),
                const SizedBox(height: 10),
                DescriptionText(
                    title: recentConversationText,
                    style: tinyTextStyle
                ),
                const SizedBox(
                    height: 180,
                    child: ListViewItems()
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
