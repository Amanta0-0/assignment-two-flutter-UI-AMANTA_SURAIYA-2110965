import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'header.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {
      'id': 1,
      'title': 'Netflix Subscripti...',
      'category': 'Entertainment',
      'date': 'Today',
      'amount': -19.99,
      'icon': '🎬',
    },
    {
      'id': 2,
      'title': 'Coffee Shop',
      'category': 'Food & Drink',
      'date': 'Today',
      'amount': -4.50,
      'icon': '☕',
    },
    {
      'id': 3,
      'title': 'Salary Deposit',
      'category': 'Income',
      'date': 'Yesterday',
      'amount': 3500.00,
      'icon': '💰',
    },
    {
      'id': 4,
      'title': 'Grocery Store',
      'category': 'Shopping',
      'date': 'Yesterday',
      'amount': -55.80,
      'icon': '🛒',
    },
    {
      'id': 5,
      'title': 'Amazon Purchase',
      'category': 'Shopping',
      'date': '2 days ago',
      'amount': -120.45,
      'icon': '🛒',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              const SizedBox(height: 40), // Add space for status bar
              const Header(), // Add Header widget here

              // BALANCE CARD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF4F46E5), Color(0xFF4338CA)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Icon(
                          LucideIcons.wallet,
                          color: Colors.white70,
                          size: 30,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Balance",
                            style: TextStyle(
                              color: Colors.indigo.shade200,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 10),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "\$8,945",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 48,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                ".32",
                                style: TextStyle(
                                  color: Colors.indigo.shade200,
                                  fontSize: 28,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Savings: ",
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                  Text(
                                    "\$5,500",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Last 30 days: ",
                                    style:
                                    TextStyle(color: Color(0xFFCBD5E1), fontSize: 14),
                                  ),
                                  const Text(
                                    "+\$300",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(width: 6),
                                  Icon(LucideIcons.arrow_right, color: Colors.white70, size: 18),
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              // ACTION BUTTONS (3-grid)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    actionButton(LucideIcons.arrow_up_down, "Transfer"),
                    actionButton(LucideIcons.circle_dollar_sign, "Pay Bills"),
                    actionButton(LucideIcons.link, "Invest"),
                  ],
                ),
              ),

              // RECENT TRANSACTIONS
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Recent Transactions",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                    Text("View All",
                        style: TextStyle(color: Colors.indigo, fontSize: 14)),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: transactions.map((txn) {
                    return Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(top: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              txn['icon'],
                              style: const TextStyle(fontSize: 26),
                            ),
                          ),
                          const SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  txn['title'],
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "${txn['category']} • ${txn['date']}",
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            "${txn['amount'] > 0 ? '+' : '-'}\$${txn['amount'].abs().toStringAsFixed(2)}",
                            style: TextStyle(
                              fontSize: 15,
                              color:
                              txn['amount'] > 0 ? Colors.green : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ACTION BUTTON WIDGET
  Widget actionButton(IconData icon, String title) {
    return Container(
      width: 95,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: Colors.indigo.shade50,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(icon, size: 28, color: Colors.indigo),
            ),
          ),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(color: Colors.black87, fontSize: 13)),
        ],
      ),
    );
  }
}
