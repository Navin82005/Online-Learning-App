import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_learning_app/model/course_model.dart';

class TransactionData extends StatelessWidget {
  final Course course;
  const TransactionData({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      constraints: const BoxConstraints(maxHeight: 200),
      // width: 200,
      decoration: BoxDecoration(
        color: const Color(0xFFe5e6e8),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: const Color(0xFFD4D4D4)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage(
                    "assets/icons/avatar-icon.png",
                  ),
                ),
                Text(
                  "Christina Amandla",
                  style: GoogleFonts.robotoFlex(color: const Color(0xFF596676)),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              course.name,
              style: GoogleFonts.robotoFlex(
                color: const Color(0xFF1f1f1f),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ID Transaction",
                      style: GoogleFonts.robotoFlex(
                        color: const Color(0xFF536071),
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "TA11231PW",
                      style: GoogleFonts.robotoFlex(
                        color: const Color(0xFF1f1f1f),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Invoice Date",
                      style: GoogleFonts.robotoFlex(
                        fontSize: 12,
                        color: const Color(0xFF536071),
                      ),
                    ),
                    Text(
                      "Nov14, 2023",
                      style: GoogleFonts.robotoFlex(
                        color: const Color(0xFF1f1f1f),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
