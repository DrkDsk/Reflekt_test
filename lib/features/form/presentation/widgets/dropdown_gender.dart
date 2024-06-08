import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reflekt_test/core/constants/color.dart';
import 'package:reflekt_test/core/constants/styles.dart';
import 'package:reflekt_test/features/chat/presentation/widgets/description_text.dart';

class DropDownGender extends StatefulWidget {
  const DropDownGender({super.key});

  @override
  State<DropDownGender> createState() => _DropDownGenderState();
}

class _DropDownGenderState extends State<DropDownGender> {

  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Gender",
            style: TextStyle(
                color: textColor
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  color: textColor,
                ),
                borderRadius: BorderRadius.circular(8)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  Expanded(
                    child: DropdownButton<String>(
                      underline: Container(),
                      isExpanded: true,
                      value: selectedItem,
                      onChanged: (value) {
                        setState(() {
                          selectedItem = value!;
                        });
                      },
                      icon: Icon(
                        MdiIcons.genderMaleFemale
                      ),
                      items: [
                        DropdownMenuItem<String>(
                          value: null,
                          enabled: false,
                          child: Text(
                            "Select Option",
                            style: genderLabelTextStyle,
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Male',
                          child: DescriptionText(
                            title: "Male",
                            style: genderLabelTextStyle,
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Female',
                          child: DescriptionText(
                            title: "Female",
                            style: genderLabelTextStyle,
                          ),
                        )
                      ],
                      hint: DescriptionText(
                        title: "Select Option",
                        style: genderLabelTextStyle,
                      ),
                  ),
                )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
