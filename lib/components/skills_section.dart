import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  final skills = const ["Flutter", "Dart", "Firebase", "REST APIs", "UI/UX Design"];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        return Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Skills", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 12,
                runSpacing: (width < 750) ? 12 : 8,
                children: skills
                    .map((skill) => Chip(
                          label: Text(skill),
                          backgroundColor: Colors.blueGrey.shade700,
                        ))
                    .toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
