import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 👇 Section Heading
          Animate(
            effects: const [FadeEffect(duration: Duration(milliseconds: 600)), SlideEffect(begin: Offset(0, -0.2))],
            child: Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.tealAccent,
                    width: 3,
                  ),
                ),
              ),
              child: const Text(
                'About Me',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.tealAccent,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
          
          const SizedBox(height: 20),
    
          // 👇 Bio Description
          const Text(
            'I am a highly skilled and results-driven Senior Mobile Application Developer with extensive experience in designing, developing, and deploying scalable, high-performance mobile applications. My core expertise lies in Flutter (BLoC & GetX) and Native Android development (Java, MVVM), delivering end-to-end solutions across industries including food delivery, logistics, meat delivery, home services, and property rentals.',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16),
          ),
    
          const SizedBox(height: 30),
      Animate(
            effects: const [FadeEffect(duration: Duration(milliseconds: 600)), SlideEffect(begin: Offset(0, -0.2))],
            child: Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.tealAccent,
                    width: 3,
                  ),
                ),
              ),
              child: const Text(
                'Experience',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.tealAccent,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
          // 👇 Experience Heading
          
          const SizedBox(height: 10),
    
          // 👇 Experience List
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ExperienceTile(
                company: 'Bytesflow Technologies',
                role: 'Flutter Developer',
                duration: 'Jan 2023 - Present',
                description: 'Developed cross-platform mobile apps with Flutter and integrated REST APIs, Firebase, and custom UI components.',
              ),
              SizedBox(height: 20),
              ExperienceTile(
                company: 'AppXperts Enterprise Solutions',
                role: 'Junior Flutter Developer',
                duration: 'May 2022 - Dec 2023',
                description: 'Worked on UI/UX improvements and assisted in building new modules for client apps using GetX and Firestore.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ExperienceTile extends StatelessWidget {
  final String company;
  final String role;
  final String duration;
  final String description;

  const ExperienceTile({
    super.key,
    required this.company,
    required this.role,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [FadeEffect(), SlideEffect(begin: Offset(0, 0.1))],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            role,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '$company • $duration',
            style: const TextStyle(fontSize: 14, color: Colors.white54),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}