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
  final String? Function(String?)? validator;

  const SizeInput({
    super.key,
    required this.hintText,
    required this.iconData,
    required this.label,
    this.suffixText,
    required this.textInputType,
    required this.controller,
    required this.onValueChanged,
    this.validator,
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
          TextFormField(
            controller: controller,
            onChanged: onValueChanged,
            keyboardType: textInputType,
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                prefixIcon: Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "-",
                        style: TextStyle(
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),
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
                    const SizedBox(width: 20),
                  ],
                ),
                hintText: suffixText == true ? null : hintText,
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: textColor.withOpacity(0.5),
                  fontWeight: FontWeight.w400
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: textColor)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: textColor)
                ),
            ),
          )
        ],
      ),
    );
  }
}
