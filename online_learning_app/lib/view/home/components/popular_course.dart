import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning_app/controller/popular_course_controller.dart';
import 'package:online_learning_app/view/common/course_card.dart';

class PopularCourse extends StatelessWidget {
  PopularCourse({super.key});
  final popularCourseController = Get.put(PopularCourseController());

  @override
  Widget build(BuildContext context) {
    popularCourseController.fetchPopularCourse();

    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: [
        ...popularCourseController.courses.map(
          (course) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: CourseCard(
              course: course,
            ),
          ),
        )
      ],
    );
  }
}
