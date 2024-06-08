import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/color.dart';

class SizeInput extends StatelessWidget {

  final String label;
  final String hintText;
  final Widget iconData;
  final bool? suffixText;
  final TextInputType textInputType;
  final TextEditingController controller;
  final ValueChanged<String> onValueChanged;

  const SizeInput({
    super.key,
    required this.hintText,
    required this.iconData,
    required this.label,
    this.suffixText,
    required this.textInputType,
    required this.controller,
    required this.onValueChanged
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
                color: textColor
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(
                  color: textColor,
                ),
                borderRadius: BorderRadius.circular(8)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: TextField(
                controller: controller,
                onChanged: onValueChanged,
                keyboardType: textInputType,
                decoration: InputDecoration(
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (suffixText == true) Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            hintText,
                            style: TextStyle(
                              fontSize: 18,
                              color: textColor.withOpacity(0.5),
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                        iconData,
                      ],
                    ),
                    hintText: suffixText == true ? null : hintText,
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: textColor.withOpacity(0.5),
                      fontWeight: FontWeight.w400
                    ),
                    border: InputBorder.none
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
