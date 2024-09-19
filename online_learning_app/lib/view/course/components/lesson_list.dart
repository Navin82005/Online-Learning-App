import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_learning_app/model/course_model.dart';
import 'package:online_learning_app/view/common/duration_widget.dart';

class LessonList extends StatelessWidget {
  final Course course;
  const LessonList({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: course.lessonVideos
          .map(
            (video) => Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(
                  video.videoName.toString(),
                  style: GoogleFonts.robotoFlex(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: DurationWidget(duration: video.duration),
                leading: Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: const Color(0xFFcbd4dd),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.lock,
                      color: Color(0xFF5e6a7a),
                    ),
                  ),
                ),
                trailing: Container(
                  height: 40,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFbec8d4),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/play.png",
                          height: 16,
                          width: 16,
                        ),
                        const Spacer(),
                        Text("Play Video", style: GoogleFonts.robotoFlex())
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
