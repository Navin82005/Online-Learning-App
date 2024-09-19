import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:online_learning_app/model/course_model.dart';
import 'package:online_learning_app/view/payment/components/transaction_data.dart';

class TransactionCard extends StatelessWidget {
  final Course course;
  const TransactionCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        // child: Column(
        //   children: [
        //     TransactionData(course: course),
        //     BarcodeWidget(data: , barcode: barcode)
        //   ],
        // ),
      ),
    );
  }
}
