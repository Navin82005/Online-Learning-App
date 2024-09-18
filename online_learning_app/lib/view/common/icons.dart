import 'package:flutter/material.dart';

class CompletedIcon extends StatelessWidget {
  final String image;
  const CompletedIcon({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFd4eba2),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Image.asset(image),
      ),
    );
  }
}
