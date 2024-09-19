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

    return GetX<PopularCourseController>(builder: (controller) {
      if (controller.isLoading.value) {
        return ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [...renderLoaders()],
        );
      }
      return ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          ...controller.courses.map(
            (course) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: CourseCard(
                course: course,
              ),
            ),
          )
        ],
      );
    });
  }

  List<Widget> renderLoaders() {
    List<Widget> l = [];

    for (int i = 0; i < 5; i++) {
      l += [
        Container(
          width: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: const Center(
            child: CircularProgressIndicator(
              color: Color(0xFFb9dd6b),
            ),
          ),
        )
      ];
    }
    return l;
  }
}
