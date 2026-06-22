import 'package:flutter/material.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  int? _hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final skills = [
      'Flutter',
      'Dart',
      'Material Design',
      'Custom Widgets',
      'Responsive UI',
      'Provider',
      'GetX',
      'Bloc',
      'Firebase',
      'Firestore',
      'Firebase Auth',
      'REST APIs',
      'Claude AI',
      'Git',
      'GitHub',
      'CI/CD',
      'Postman',
      'Hive',
      'SQLite',
      'Shared Preferences',
      'UI/UX Design',
      'Figma',
      'Animations',
      'Push Notifications',
      'Google Maps',
      'Animations',
      'WebSockets',
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      color: Colors.black,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Technologies I have worked with:',
            style: TextStyle(
              color: Colors.tealAccent,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: List.generate(skills.length, (index) {
              final skill = skills[index];
              final isHovered = _hoveredIndex == index;

              return MouseRegion(
                onEnter: (_) => setState(() => _hoveredIndex = index),
                onExit: (_) => setState(() => _hoveredIndex = null),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.tealAccent),
                    boxShadow:
                        isHovered
                            ? [
                              BoxShadow(
                                color: Colors.tealAccent.withOpacity(0.6),
                                blurRadius: 10,
                                spreadRadius: 1,
                              ),
                            ]
                            : [],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.play_arrow,
                        color: Colors.tealAccent,
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        skill,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
