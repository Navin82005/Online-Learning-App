import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({super.key});
  final String _date = "19 Nov, 2023";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFb9dd6b),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.calendar_today_outlined),
              const SizedBox(width: 4),
              Text(_date, style: GoogleFonts.robotoFlex()),
            ],
          ),
        ),
      ),
    );
  }
}
