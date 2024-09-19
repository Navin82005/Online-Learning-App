import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseScreenHeader extends StatelessWidget {
  const CourseScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.back, size: 20),
            ),
          ),
          Text(
            "Details",
            style: GoogleFonts.robotoFlex(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () => print("Notifications"),
              icon: const Icon(CupertinoIcons.bell, size: 20),
            ),
          ),
        ],
      ),
    );
  }
}
