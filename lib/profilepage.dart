import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'header.dart';


class ProfilePage extends StatelessWidget {
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
                children: [
                  SizedBox(height: 16),
                  Text(
                    "User Profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 24,
                    ),
                  ),

                  SizedBox(height: 32),

                  // Profile Avatar
                  Center(
                    child: Container(
                      width: 128,
                      height: 128,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "SN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 32),

                  // Profile Information Cards
                  Column(
                    children: [
                      // Name
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name",
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 14)),
                            SizedBox(height: 4),
                            Text("STUDENT NAME (YOUR NAME HERE)",
                                style: TextStyle(
                                    color: Colors.grey[900], fontSize: 16)),
                          ],
                        ),
                      ),

                      // Student ID
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Student ID",
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 14)),
                            SizedBox(height: 4),
                            Text("S12345 (YOUR ID HERE)",
                                style: TextStyle(
                                    color: Colors.grey[900], fontSize: 16)),
                          ],
                        ),
                      ),

                      // Email
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Email",
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 14)),
                            SizedBox(height: 4),
                            Text(
                              "student.name@iub.edu (YOUR IUB EMAIL HERE)",
                              style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Bio / Story
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Bio / Story",
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    height: 1.5)),
                            SizedBox(height: 12),
                            Text(
                              "\"I'm currently focusing on my final year, balancing studies with building side projects. I believe financial health is key to academic success. I love hiking on weekends and planning my next big travel adventure!\"",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                height: 1.6,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "(Note: Students should replace the text above with their own description here!)",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
