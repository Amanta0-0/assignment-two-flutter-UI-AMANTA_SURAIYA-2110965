import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'homepage.dart';
import 'reportspage.dart';
import 'cardspage.dart';
import 'profilepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _currentPage = "home";

  void _onPageChange(String page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Content
          if (_currentPage == "home")
            HomePage()
          else if (_currentPage == "reports")
            ReportsPage()
          else if (_currentPage == "cards")
              CardsPage()
            else if (_currentPage == "profile")
                ProfilePage()
              else
                Center(child: Text("Page: $_currentPage", style: const TextStyle(fontSize: 20))),

          // Bottom Navigation
          BottomNavigation(
            currentPage: _currentPage,
            onPageChange: _onPageChange,
          ),
        ],
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  final String currentPage;
  final Function(String) onPageChange;

  const BottomNavigation({
    super.key,
    required this.currentPage,
    required this.onPageChange,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          constraints: const BoxConstraints(maxWidth: 400),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.grey.shade300)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // HOME
                _navButton(
                  label: "Home",
                  icon: LucideIcons.house,
                  active: currentPage == "home",
                  onTap: () => onPageChange("home"),
                ),

                // REPORTS
                _navButton(
                  label: "Reports",
                  icon: LucideIcons.file_text,
                  active: currentPage == "reports",
                  onTap: () => onPageChange("reports"),
                ),

                // CARDS
                _navButton(
                  label: "Cards",
                  icon: LucideIcons.credit_card,
                  active: currentPage == "cards",
                  onTap: () => onPageChange("cards"),
                ),

                // PROFILE
                _navButton(
                  label: "Profile",
                  icon: LucideIcons.user,
                  active: currentPage == "profile",
                  onTap: () => onPageChange("profile"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _navButton({
    required String label,
    required IconData icon,
    required bool active,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 26,
            color: active ? Colors.indigo : Colors.grey,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              color: active ? Colors.indigo : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
