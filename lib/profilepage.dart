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
                          "AS",
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
                            Text("AMANTA SURAIYA",
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
                            Text("2110965",
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
                              "2110965@iub.edu.bd",
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
                              "\"Final-year student with a love for learning and building meaningful side projects. I value financial wellness as part of my journey toward success. Outside the classroom, I'm usually hiking, exploring nature, or dreaming up my next travel destination.\"",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                height: 1.6,
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
