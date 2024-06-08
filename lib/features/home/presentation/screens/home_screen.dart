import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/color.dart';
import 'package:reflekt_test/features/chat/presentation/screens/chat_screen.dart';
import 'package:reflekt_test/features/chat/presentation/widgets/large_button.dart';
import 'package:reflekt_test/features/form/presentation/screens/form_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    void navigateChatScreen() {
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => const ChatScreen())
      );
    }

    void navigateFormScreen() {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FormScreen())
      );
    }
    
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: LargeButton(
                  onTap: navigateChatScreen,
                  color: buttonColor,
                  title: "Navigate to Chat Page",
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: LargeButton(
                  onTap: navigateFormScreen,
                  color: buttonColor,
                  title: "Navigate to Form Page",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
