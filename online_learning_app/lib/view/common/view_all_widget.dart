import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAllWidget extends StatelessWidget {
  final String name;
  const ViewAllWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: GoogleFonts.robotoFlex(fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () => print("view all $name"),
            child: Text(
              "View All",
              style: GoogleFonts.robotoFlex(
                color: const Color(0xFF838383),
              ),
            ),
          )
        ],
      ),
    );
  }
}
