import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_learning_app/view/common/date_time_widget.dart';
import 'package:online_learning_app/view/common/icons.dart';

class CurrentProgressSection extends StatelessWidget {
  const CurrentProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFb9dd6b),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FirstChild(),
            SizedBox(height: 20),
            SecondChild(),
          ],
        ),
      ),
    );
  }
}

class FirstChild extends StatelessWidget {
  const FirstChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFd4eba2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mathematics Cource",
                    style: GoogleFonts.robotoFlex(),
                  ),
                  const DateTimeWidget(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SecondChild extends StatelessWidget {
  const SecondChild({super.key});

  @override
  Widget build(context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Completed",
                style: GoogleFonts.robotoFlex(fontSize: 12),
              ),
              subtitle: Text(
                "20",
                style: GoogleFonts.robotoFlex(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const CompletedIcon(image: "assets/icons/checkmark.png"),
            ),
          ),
          const VerticalDivider(
            thickness: 2,
            color: Color(0xFFd4eba2),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Hours Spent",
                style: GoogleFonts.robotoFlex(fontSize: 12),
              ),
              subtitle: Text(
                "455",
                style: GoogleFonts.robotoFlex(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const CompletedIcon(image: "assets/icons/clock.png"),
            ),
          ),
        ],
      ),
    );
  }
}
