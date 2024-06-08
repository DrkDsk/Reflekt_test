import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/decorations.dart';
import 'package:reflekt_test/core/constants/styles.dart';
import 'package:reflekt_test/features/chat/domain/suggestion.dart';

class SuggestionCard extends StatelessWidget {

  final Suggestion suggestion;

  const SuggestionCard({
    super.key,
    required this.suggestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 20),
      width: MediaQuery.of(context).size.width * 0.55,
      decoration: cardBoxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: iconDecoration,
            child: suggestion.icon,
          ),
          const SizedBox(height: 10),
          Text(
            suggestion.title,
            style: suggestionTitleStyle
          )
        ],
      ),
    );
  }
}