import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'header.dart';

class CardsPage extends StatelessWidget {
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
                    "My Cards",
                    style: TextStyle(color: Colors.grey[900], fontSize: 22),
                  ),

                  // Credit Card
                  Container(
                    margin: const EdgeInsets.only(top: 24, bottom: 24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.grey.shade800, Colors.grey.shade900],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 48,
                              height: 36,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.yellow.shade400, Colors.yellow.shade500],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Text(
                              "BANK",
                              style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),

                        SizedBox(height: 32),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "4567 **** **** 1234",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              letterSpacing: 2,
                            ),
                          ),
                        ),

                        SizedBox(height: 32),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("CARD HOLDER",
                                    style: TextStyle(color: Colors.grey[400], fontSize: 10)),
                                SizedBox(height: 4),
                                Text("STUDENT NAME",
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("EXPIRES",
                                    style: TextStyle(color: Colors.grey[400], fontSize: 10)),
                                SizedBox(height: 4),
                                Text("12/28",
                                    style: TextStyle(color: Colors.white, fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Card Actions
                  GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    children: [
                      // Block
                      CardActionButton(
                        icon: LucideIcons.ban,
                        label: "Block",
                      ),

                      // Details
                      CardActionButton(
                        icon: LucideIcons.credit_card,
                        label: "Details",
                      ),

                      // Limit
                      CardActionButton(
                        icon: LucideIcons.info,
                        label: "Limit",
                      ),
                    ],
                  ),

                  SizedBox(height: 24),

                  // Linked Accounts
                  Text(
                    "Linked Accounts",
                    style: TextStyle(color: Colors.grey[900], fontSize: 18),
                  ),

                  SizedBox(height: 16),

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade100),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text("S", style: TextStyle(color: Colors.indigo)),
                          ),
                        ),

                        SizedBox(width: 12),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shared Savings",
                                  style: TextStyle(color: Colors.grey[900], fontSize: 16)),
                              Text("\$5,500.00",
                                  style: TextStyle(color: Colors.grey[500], fontSize: 14)),
                            ],
                          ),
                        ),

                        Icon(LucideIcons.chevron_right, color: Colors.grey[400], size: 22),
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

// CARD ACTION BUTTON COMPONENT
class CardActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const CardActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade100),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.indigo.shade50,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.indigo, size: 24),
          ),
          SizedBox(height: 8),
          Text(label, style: TextStyle(color: Colors.grey[700], fontSize: 14)),
        ],
      ),
    );
  }
}
