import 'package:get/get.dart';
import 'package:online_learning_app/model/course_model.dart';

class CourseController extends GetxController {
  var courses = [].obs;
  var isLoading = false.obs;

  fetchCourse() async {
    isLoading.value = true;
    // await Future.delayed(const Duration(seconds: 2));
    courses.value = [
      Course(
        name: "Photoshop Editing Course",
        participant: "+30",
        lessons: 30,
        rating: "4.8",
        ratedBy: "230",
        icon: 'assets/images/photoshop.png',
        lessonVideos: [
          LessonVideo(videoName: "Introduction", duration: "3h 30min"),
          LessonVideo(videoName: "Basic Tools", duration: "2h 15min"),
          LessonVideo(videoName: "Layers", duration: "2h 45min"),
          LessonVideo(videoName: "Advanced Techniques", duration: "3h 10min"),
          LessonVideo(videoName: "Color Correction", duration: "1h 50min"),
          LessonVideo(videoName: "Final Project", duration: "4h"),
        ],
      ),
      Course(
        name: "Illustrator Editing Course",
        participant: "+30",
        lessons: 30,
        rating: "4.8",
        ratedBy: "230",
        icon: 'assets/images/illustrator.png',
        lessonVideos: [
          LessonVideo(videoName: "Getting Started", duration: "3h"),
          LessonVideo(videoName: "Vector Basics", duration: "2h"),
          LessonVideo(videoName: "Paths", duration: "2h 30min"),
          LessonVideo(videoName: "Text Editing", duration: "3h"),
          LessonVideo(videoName: "Brushes and Patterns", duration: "2h 20min"),
          LessonVideo(videoName: "Design a Logo", duration: "3h 15min"),
        ],
      ),
      Course(
        name: "Lightroom Editing Course",
        participant: "+30",
        lessons: 30,
        rating: "4.8",
        ratedBy: "230",
        icon: 'assets/images/lightroom.png',
        lessonVideos: [
          LessonVideo(videoName: "Introduction", duration: "3h"),
          LessonVideo(videoName: "Organizing Photos", duration: "1h 30min"),
          LessonVideo(videoName: "Basic Adjustments", duration: "2h"),
          LessonVideo(videoName: "Advanced Techniques", duration: "2h 45min"),
          LessonVideo(videoName: "Presets", duration: "1h 50min"),
          LessonVideo(videoName: "Editing a Photo", duration: "3h"),
        ],
      ),
    ];
    update();
    isLoading.value = false;
  }
}
