import 'package:flutter/material.dart';
import 'package:portfolio/components/about_section.dart';
import 'package:portfolio/components/contact_section.dart';
import 'package:portfolio/components/hero_section.dart';
import 'package:portfolio/components/projects_section.dart';
import 'package:portfolio/components/skills_section.dart';

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            AboutSection(),
            SkillsSection(),
            ProjectsSection(),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}