import 'package:banga_rent/constant/app_colors.dart';
import 'package:banga_rent/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.cardRadius)),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  SummaryItem(
                    title: "Tổng số bài đăng",
                    amount: "23",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SummaryItem(
                    title: "Tổng số khách đang thuê",
                    amount: "30",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SummaryItem(
                    title: "Tổng số khách đang thuê",
                    amount: "30",
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                children: [
                  SummaryItem(
                    title: "Tổng số phòng",
                    amount: "30",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SummaryItem(
                    title: "Tổng số phòng đã thuê",
                    amount: "30",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SummaryItem(
                    title: "Tổng số phòng đã thuê",
                    amount: "30",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.title, required this.amount});
  final String title, amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: -0.5),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(amount,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.5,
                color: AppColor.summaryAmount))
      ],
    );
  }
}
