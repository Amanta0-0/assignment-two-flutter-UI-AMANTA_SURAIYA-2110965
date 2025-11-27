import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'header.dart';

class ReportsPage extends StatelessWidget {
  final List<Map<String, dynamic>> spendingData = [
    {'category': 'Food & Drink', 'amount': 450, 'percentage': 35, 'color': Colors.red},
    {'category': 'Shopping', 'amount': 320, 'percentage': 25, 'color': Colors.indigo},
    {'category': 'Housing', 'amount': 280, 'percentage': 22, 'color': Colors.yellow},
    {'category': 'Transport', 'amount': 150, 'percentage': 12, 'color': Colors.green},
    {'category': 'Other', 'amount': 70, 'percentage': 6, 'color': Colors.grey},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            const SizedBox(height: 40), // Add space for status bar
            const Header(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Monthly Spending Report",
                    style: TextStyle(color: Colors.grey[900], fontSize: 20),
                  ),

                  // Total Expenses Card
                  Container(
                    margin: const EdgeInsets.only(top: 16, bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.grey.shade200),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Expenses (Last 30 days)",
                          style: TextStyle(color: Colors.grey[500], fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "-\$1270",
                              style: TextStyle(color: Colors.grey[900], fontSize: 48),
                            ),
                            SizedBox(width: 4),
                            Text(
                              ".00",
                              style: TextStyle(color: Colors.grey[400], fontSize: 24),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.trending_up, color: Colors.red, size: 16),
                            SizedBox(width: 6),
                            Text(
                              "Up 12% from last month",
                              style: TextStyle(color: Colors.red, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Spending Breakdown
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.grey.shade200),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Spending Breakdown",
                          style: TextStyle(color: Colors.grey[900], fontSize: 18),
                        ),
                        SizedBox(height: 24),

                        Column(
                          children: spendingData.map((item) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 24),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        item['category'],
                                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                                      ),
                                      Text(
                                        "\$${item['amount'].toStringAsFixed(2)} (${item['percentage']}%)",
                                        style: TextStyle(color: Colors.grey[900], fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    height: 8,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: FractionallySizedBox(
                                      alignment: Alignment.centerLeft,
                                      widthFactor: item['percentage'] / 100,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: item['color'],
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 80), // Extra padding for bottom nav
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
