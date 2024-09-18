import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage(
          "assets/icons/avatar-icon.png",
        ),
      ),
      title: Text(
        "Christiana Amandal",
        style: GoogleFonts.robotoFlex(fontWeight: FontWeight.bold),
      ),
      subtitle: Text("Lets Learning to smart", style: GoogleFonts.robotoFlex()),
      trailing: Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset("assets/icons/search.png", height: 20, width: 20),
        ),
      ),
    );
    // return Row(
    //   children: [
    //     CircleAvatar(
    //       backgroundImage: AssetImage(
    //         "assets/icons/avatar-icon.png",
    //       ),
    //     ),
    //     Text("Christiana Amandal"),
    //     Text("Lets Learning to smart"),
    //     // trailing: Center(
    //     //   child: CircleAvatar(
    //     //     maxRadius: 20,
    //     //     child: Icon(Icons.search),
    //     //   ),
    //     // ),
    //     // Image.asset(
    //     //   "assets/icons/avatar-icon.png",
    //     // ),
    //   ],
    // );
  }
}
