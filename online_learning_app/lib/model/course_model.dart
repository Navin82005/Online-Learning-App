class LessonVideo {
  String videoName;
  String duration;

  LessonVideo({required this.videoName, required this.duration});
}

class Course {
  String name;
  String participant;
  String rating;
  String ratedBy;
  String icon;

  int lessons;

  List<LessonVideo> lessonVideos;

  Course({
    required this.name,
    required this.icon,
    required this.participant,
    required this.lessons,
    required this.rating,
    required this.ratedBy,
    required this.lessonVideos,
  });
}
