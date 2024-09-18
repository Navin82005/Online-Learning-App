import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DurationWidget extends StatelessWidget {
  final String duration;
  const DurationWidget({super.key, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.watch_later_outlined,
          color: Color(0xFF495768),
          size: 15,
        ),
        Text(
          " $duration",
          style: GoogleFonts.robotoSerif(
            fontSize: 12,
            color: const Color(0xFF495768),
          ),
        )
      ],
    );
  }
}
