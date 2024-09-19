import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvatarCircles extends StatelessWidget {
  final List<String> images;
  final String number;
  final Color color;
  const AvatarCircles({
    super.key,
    required this.images,
    required this.number,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < images.length; i++)
          Align(
            widthFactor: .6,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 19,
                backgroundImage: AssetImage(images[i]),
                backgroundColor: color,
              ),
            ),
          ),
        Align(
          widthFactor: .6,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 19,
              backgroundColor: color,
              child: Text(
                "+$number",
                style: GoogleFonts.robotoFlex(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Text(
          "Participant",
          style: GoogleFonts.robotoFlex(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
