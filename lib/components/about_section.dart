
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About Me", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          Text(
            "I am a passionate Flutter developer with experience building mobile and web applications. "
            "I enjoy solving problems, learning new technologies, and delivering user-friendly products.",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
