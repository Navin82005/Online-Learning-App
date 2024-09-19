import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_learning_app/view/common/duration_widget.dart';
import 'package:online_learning_app/view/common/lessons_widget.dart';

class DetailsCard extends StatelessWidget {
  final String name;
  final String lessons;
  const DetailsCard({super.key, required this.name, required this.lessons});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Our Students",
          style: GoogleFonts.robotoFlex(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 7),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: renderStudents(),
        ),
        Text(
          name,
          style:
              GoogleFonts.robotoFlex(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        const SizedBox(height: 10),
        Text(
          "A representation that can convey the three-dimensional aspects of a design through a two-dimensional medium.",
          style: GoogleFonts.robotoFlex(color: const Color(0xFF667181)),
          // fontWeight: FontWeight.w500, fontSize: 18),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LessonsWidget(lessons: lessons),
            const DurationWidget(duration: "13h 30min"),
          ],
        )
      ],
    );
  }

  renderStudents() => Row(
        children: [
          for (var img in [
            "assets/icons/av-1.png",
            "assets/icons/av-2.png",
            "assets/icons/av-3.png",
            "assets/icons/av-4.png",
            "assets/icons/av-5.png",
          ])
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage(img),
              ),
            ),
        ],
      );
}
