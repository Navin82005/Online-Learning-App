import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_learning_app/model/course_model.dart';
import 'package:online_learning_app/view/common/view_all_widget.dart';
import 'package:online_learning_app/view/course/components/course_footer.dart';
import 'package:online_learning_app/view/course/components/course_screen_header.dart';
import 'package:online_learning_app/view/course/components/details_card.dart';
import 'package:online_learning_app/view/course/components/lesson_list.dart';

class CoursePage extends StatelessWidget {
  final Course course;
  const CoursePage({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    print(course.lessonVideos);
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CourseScreenHeader(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: DetailsCard(
                  name: course.name,
                  lessons: course.lessons.toString(),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ViewAllWidget(name: "Video"),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LessonList(course: course),
            ),
          ),
          const CourseBottomButton(),
        ],
      ),
    );
  }
}
