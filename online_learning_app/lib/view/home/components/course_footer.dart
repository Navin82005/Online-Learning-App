import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_learning_app/model/course_model.dart';
import 'package:online_learning_app/view/common/lessons_widget.dart';

class CourseFooter extends StatelessWidget {
  final Course course;
  const CourseFooter({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.star_rounded,
              color: Color(0xFFfe9c43),
            ),
            Text(
              course.rating,
              style: GoogleFonts.robotoSerif(
                  fontSize: 12, color: const Color(0xFF495768)),
            ),
            Text(
              "(${course.ratedBy})",
              style: GoogleFonts.robotoSerif(
                  fontSize: 12, color: const Color(0xFF495768)),
            ),
          ],
        ),
        const SizedBox(width: 15),
        LessonsWidget(lessons: course.lessons.toString())
      ],
    );
  }
}
