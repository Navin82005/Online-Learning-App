import 'package:flutter/material.dart';
import 'package:online_learning_app/model/course_model.dart';
import 'package:online_learning_app/view/payment/components/transaction_card.dart';
import 'package:online_learning_app/view/payment/components/transaction_data.dart';

class PaymentScreen extends StatelessWidget {
  final Course course;
  const PaymentScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe5e6e8),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SafeArea(child: SizedBox.shrink()),
            TransactionCard(course: course),
          ],
        ),
      ),
    );
  }
}
