import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_learning_app/view/common/view_all_widget.dart';
import 'package:online_learning_app/view/home/components/Courses_section.dart';
import 'package:online_learning_app/view/home/components/current_progress_section.dart';
import 'package:online_learning_app/view/home/components/header_section.dart';
import 'package:online_learning_app/view/home/components/popular_course.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      body: Column(
        children: [
          const SafeArea(child: HeaderSection()),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                shrinkWrap: true,
                children: [
                  const CurrentProgressSection(),
                  const ViewAllWidget(name: "Popular Courses"),
                  SizedBox(height: 300, child: PopularCourse()),
                  const ViewAllWidget(name: "Courses"),
                  CoursesSection(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
