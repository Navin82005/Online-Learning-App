import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_learning_app/controller/corse_controller.dart';
import 'package:online_learning_app/view/course/course.dart';
import 'package:online_learning_app/view/home/components/course_footer.dart';

class CoursesSection extends StatelessWidget {
  CoursesSection({super.key});
  final coursesController = Get.put(CourseController());

  @override
  Widget build(BuildContext context) {
    coursesController.fetchCourse();
    return GetX<CourseController>(builder: (controller) {
      return ListView(
        shrinkWrap: true,
        children: [
          ...controller.courses.map(
            (course) => Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  tileColor: Colors.transparent,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  leading: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFedf2f3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(course.icon),
                    ),
                  ),
                  title: Text(course.name, style: GoogleFonts.robotoSerif()),
                  subtitle: CourseFooter(course: course),
                  onTap: () => Get.to(() => CoursePage(course: course)),
                ),
              ),
            ),
          )
        ],
      );
    });
  }
}
