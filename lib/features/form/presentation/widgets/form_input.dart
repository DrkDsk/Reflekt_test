import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/color.dart';

class FormInput extends StatelessWidget {

  final String label;
  final String hintText;
  final IconData iconData;
  final bool? suffixText;
  final TextInputType textInputType;
  final TextEditingController controller;
  final ValueChanged<String> onValueChanged;
  final String? Function(String?)? validator;

  const FormInput({
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
            onChanged: onValueChanged,
            controller: controller,
            keyboardType: textInputType,
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  const SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: textColor
                    ),
                    child: Icon(
                      iconData,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
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
