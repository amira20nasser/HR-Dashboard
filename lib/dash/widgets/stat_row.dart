import 'package:flutter/material.dart';
import 'stat_card.dart';

class StatisticsRow extends StatelessWidget {
  const StatisticsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: StatisticsCard(
            title: 'Total Employee',
            number: "216",
            men: "120 Men",
            women: "96 Women",
            label: '+2% Past month',
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: StatisticsCard(
            title: 'Talent Request',
            number: "16",
            men: "6 Men",
            women: "10 Women",
            label: '+5% Past month',
          ),
        ),
      ],
    );
  }
}
