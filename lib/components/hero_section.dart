import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        return Container(
          height: (width < 750) ? 500 : 400,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: (width < 750)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: heroContent(),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // const CircleAvatar(
                      //   radius: 70,
                      //   backgroundImage: NetworkImage(
                      //     "https://avatars.githubusercontent.com/u/9919?s=280&v=4", // replace with your photo
                      //   ),
                      // ),
                      // const SizedBox(width: 40),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: heroContent(),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }

  List<Widget> heroContent() {
    return const [
      CircleAvatar(
        radius: 60,
        backgroundImage: NetworkImage(
          "https://avatars.githubusercontent.com/u/9919?s=280&v=4", // replace with your photo
        ),
      ),
      SizedBox(height: 20),
      Text(
        "Hi, I’m Fatima 👋",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      Text(
        "Flutter Developer | Mobile & Web Enthusiast",
        style: TextStyle(fontSize: 18, color: Colors.white70),
      ),
    ];
  }
}