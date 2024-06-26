import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/color.dart';
import 'package:reflekt_test/core/constants/styles.dart';
import 'package:reflekt_test/features/chat/presentation/widgets/description_text.dart';
import 'package:reflekt_test/features/form/presentation/widgets/date_picker.dart';
import 'package:reflekt_test/features/form/presentation/widgets/dropdown_gender.dart';
import 'package:reflekt_test/features/form/presentation/widgets/form_input.dart';
import 'package:reflekt_test/features/form/presentation/widgets/size_input.dart';
import 'package:reflekt_test/features/form/presentation/widgets/submit_button.dart';

class FormBody extends StatefulWidget {
  const FormBody({super.key});

  @override
  State<FormBody> createState() => _FormBodyState();
}

class _FormBodyState extends State<FormBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController inchesController = TextEditingController();
  bool formValid = false;
  String? selectedGender;

  void validateForm() {
    setState(() {
      print(selectedGender);
      formValid = nameController.text.isNotEmpty &&
          RegExp(r'^[a-zA-Z ]+$').hasMatch(nameController.text) &&
          weightController.text.isNotEmpty &&
          heightController.text.isNotEmpty &&
          inchesController.text.isNotEmpty &&
          selectedGender != null &&
          selectedGender != 'Select Option';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Form(
        key: formKey,
        onChanged: validateForm,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: DescriptionText(
                title: "Personal Information",
                style: personalInformationTextStyle,
              ),
            ),
            FormInput(
              onValueChanged: (value) {
                validateForm();
              },
              validator: (text) {
                if (text == null) return null;
                if (text.isEmpty) return 'Name cant be empty';
                final validCharacters = RegExp(r'^[a-zA-Z ]+$');
                if (!validCharacters.hasMatch(text)) {
                  return 'Please type a name without special characters';
                }
                return null;
              },
              controller: nameController,
              textInputType: TextInputType.text,
              label: 'Name',
              hintText: 'Enter your name',
              iconData: Icons.person,
            ),
            const DatePicker(),
            SizeInput(
              controller: weightController,
              onValueChanged: (value) {
                validateForm();
              },
              maxNumbers: 3,
              textInputType: TextInputType.number,
              suffixText: true,
              label: 'Weight',
              hintText: 'lbs',
              iconData: const ImageIcon(AssetImage("assets/images/weightmeter.png"), color: textColor, size: 30),
            ),
            Row(
              children: [
                Expanded(
                    child: SizeInput(
                      controller: heightController,
                      onValueChanged: (value) {
                        validateForm();
                      },
                      maxNumbers: 1,
                      textInputType: TextInputType.number,
                      suffixText: true,
                      label: 'Height',
                      hintText: 'Feet',
                      iconData: const ImageIcon(AssetImage("assets/images/ruler.png"), color: textColor, size: 30,),
                    )
                ),
                const SizedBox(width: 15),
                Expanded(
                    child: SizeInput(
                      controller: inchesController,
                      onValueChanged: (value) {
                        validateForm();
                      },
                      maxNumbers: 2,
                      textInputType: TextInputType.number,
                      suffixText: true,
                      label: '',
                      hintText: 'Inches',
                      iconData: const ImageIcon(AssetImage("assets/images/ruler.png"), color: textColor, size: 30,),
                    )
                )
              ],
            ),
            DropDownGender(
              selectedGender: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                  validateForm();
                });
              },
            ),
            const SizedBox(height: 20),
            DescriptionText(
                title: "Information is being collected for medical records.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade400,
                )
            ),
            const SizedBox(height: 20),
            SubmitButton(
              isEnabled: formValid,
              onTap: () {},
              color: !formValid ? buttonColor.withOpacity(0.5) : buttonColor,
              title: 'continue',
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
