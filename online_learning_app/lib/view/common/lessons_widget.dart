import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonsWidget extends StatelessWidget {
  final String lessons;
  const LessonsWidget({super.key, required this.lessons});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          CupertinoIcons.play_circle,
          color: Color(0xFF495768),
          size: 15,
        ),
        Text(
          " ${lessons} Lessons",
          style: GoogleFonts.robotoSerif(
              fontSize: 12, color: const Color(0xFF495768)),
        )
      ],
    );
  }
}
