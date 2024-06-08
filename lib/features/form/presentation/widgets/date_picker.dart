import 'package:flutter/material.dart';
import 'package:reflekt_test/core/constants/color.dart';

class DatePicker extends StatefulWidget {

  const DatePicker({
    super.key
  });

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {

  DateTime? selectedDate;
  String dateFormatted = "";

  @override
  Widget build(BuildContext context) {

    Future<void> selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate) {
        setState(() {
          selectedDate = picked;
          String? day = selectedDate?.day.toString().padLeft(2, '0');
          String? month = selectedDate?.month.toString().padLeft(2, '0');
          String? year = selectedDate?.year.toString();
          dateFormatted = '$month/$day/$year';
        });
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Date of Birth",
            style: TextStyle(
                color: textColor
            ),
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () {
              selectDate(context);
            },
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: textColor,
                  ),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                        dateFormatted.isNotEmpty ? dateFormatted : "mm/dd/yyyy",
                        style: TextStyle(
                            fontSize: 18,
                            color: textColor.withOpacity(0.5),
                            fontWeight: FontWeight.w400
                        )
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.calendar_month,
                      color: textColor,
                      size: 30,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
