import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_learning_app/view/payment/payment.dart';

class CourseBottomButton extends StatelessWidget {
  const CourseBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () => print("closed"),
      builder: (context) => Container(
        height: 100,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: const Color(0xFFb9dd6b),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Center(
                  child: Icon(Icons.bookmark_outlined, color: Colors.white),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: GestureDetector(
                  onTap: () => Get.to(const PaymentScreen()),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                      color: const Color(0xFFb9dd6b),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(
                        "Enroll Now",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
