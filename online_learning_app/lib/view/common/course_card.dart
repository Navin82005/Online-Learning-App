import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_learning_app/model/course_model.dart';
import 'package:online_learning_app/view/common/avatar_circles.dart';
import 'package:online_learning_app/view/home/components/course_footer.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(course.icon, height: 72, width: 72),
            Text(
              course.name,
              style: GoogleFonts.robotoSerif(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            const AvatarCircles(
              images: [
                "assets/icons/av-1.png",
                "assets/icons/av-2.png",
                "assets/icons/av-3.png"
              ],
              number: "30",
              color: Color(0xFFb9dd6b),
            ),
            const Divider(
              thickness: 1,
              color: Color(0xFFEDEDED),
            ),
            CourseFooter(course: course),
          ],
        ),
      ),
    );
  }
}
