import 'package:flutter/material.dart';
import 'package:reflekt_test/features/form/presentation/widgets/form_body.dart';
import 'package:reflekt_test/features/home/presentation/widgets/back_button_app_bar.dart';
import 'package:reflekt_test/features/form/presentation/widgets/profile_card.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white.withOpacity(0.99),
            title: const Row(
              children: [
                BackButtonAppBar(),
                SizedBox(width: 10),
              ],
            ),
          ),
          backgroundColor: Colors.white.withOpacity(0.99),
          body: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileCard(),
                SizedBox(height: 20),
                FormBody()
              ],
            ),
          ),
        )
    );
  }
}
