
import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        if (width < 750) {
          return buildProjects(crossAxisCount: 1); // 📱 Mobile
        } else if (width < 1200) {
          return buildProjects(crossAxisCount: 2); // 💻 Tablet
        } else {
          return buildProjects(crossAxisCount: 3); // 🖥️ Desktop
        }
      },
    );
  }

  Widget buildProjects({required int crossAxisCount}) {
    final projects = [
      {"title": "Buy Spy", "desc": "eBay search & alerts app using ASP.NET backend & Flutter."},
      {"title": "Sphere", "desc": "Task & schedule manager with AI integration."},
      {"title": "Portfolio", "desc": "This Flutter Web portfolio project."},
    ];

    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Projects", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.4,
            ),
            itemCount: projects.length,
            itemBuilder: (context, index) {
              return projectCard(projects[index]["title"]!, projects[index]["desc"]!);
            },
          ),
        ],
      ),
    );
  }

  Widget projectCard(String title, String description) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade800,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(description, style: const TextStyle(fontSize: 14, color: Colors.white70)),
        ],
      ),
    );
  }
}