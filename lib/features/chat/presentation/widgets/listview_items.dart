import 'package:flutter/material.dart';
import 'package:reflekt_test/features/chat/domain/suggestion.dart';
import 'package:reflekt_test/features/chat/presentation/widgets/suggestion_card.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 100,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          Suggestion suggestion = suggestionItems[index];
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: SuggestionCard(suggestion: suggestion),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 20,
          );
        },
        itemCount: suggestionItems.length
      ),
    );
  }
}
