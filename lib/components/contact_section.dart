

import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      color: const Color(0xFF1E293B),
      child: const Column(
        children: [
          Text("Contact Me", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          Text("📧 fatima@example.com", style: TextStyle(fontSize: 16)),
          Text("🔗 linkedin.com/in/fatima", style: TextStyle(fontSize: 16)),
          Text("💻 github.com/fatima", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}