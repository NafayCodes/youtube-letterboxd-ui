import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VideoDatePicker extends StatefulWidget {
  const VideoDatePicker({super.key});

  @override
  State<VideoDatePicker> createState() => _VideoDatePickerState();
}

class _VideoDatePickerState extends State<VideoDatePicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> _pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // today by default
      firstDate: DateTime(1900), // min year
      lastDate: DateTime(2100), // max year
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.dark(
              primary: Colors.deepPurple,
              onPrimary: Colors.white,
              surface: const Color(0xFF3D3B54),
              onSurface: Colors.white,
            ),
            dialogTheme: DialogThemeData(
              backgroundColor: const Color(0xFF1E1C2A),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickDate,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Color(0xFF3D3B54),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.calendar_today_outlined,
              size: 12,
              color: Colors.white,
              weight: 0.8,
            ),
            Text(
              DateFormat("dd MMMM yyyy").format(selectedDate),
              style: TextStyle(
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w400,
                fontSize: 9,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
