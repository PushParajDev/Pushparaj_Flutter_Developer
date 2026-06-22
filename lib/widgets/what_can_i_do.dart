import 'package:flutter/material.dart';

class WhatICanDoSection extends StatefulWidget {
  const WhatICanDoSection({super.key});

  @override
  State<WhatICanDoSection> createState() => _WhatICanDoSectionState();
}

class _WhatICanDoSectionState extends State<WhatICanDoSection> {
  int? _hoveredIndex;

  final items = [
    {
      'icon': Icons.smartphone,
      'title': 'Mobile App Development',
      'desc':
          'Creating beautiful and functional mobile applications for iOS and Android platforms.',
    },

    {
      'icon': Icons.payment,
      'title': 'Payment Gateway Integration',
      'desc': 'Integrating various payment gateways into mobile applications.',
    },
    {
      'icon': Icons.web,
      'title': 'Web Development',
      'desc':
          'Building responsive and modern web applications using Flutter Web.',
    },
    {
      'icon': Icons.api,
      'title': 'API Integration',
      'desc':
          'Integrating RESTful APIs and third-party services into mobile applications.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: Colors.black,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "What I can do?",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "I may not be perfect but surely I'm of some use :)",
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: List.generate(items.length, (index) {
              final item = items[index];
              final isHovered = _hoveredIndex == index;

              return MouseRegion(
                onEnter: (_) => setState(() => _hoveredIndex = index),
                onExit: (_) => setState(() => _hoveredIndex = null),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: 300,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(16),
                    border:
                        isHovered
                            ? Border.all(color: Colors.tealAccent, width: 2)
                            : null,
                    boxShadow:
                        isHovered
                            ? [
                              BoxShadow(
                                color: Colors.orange.withOpacity(0.4),
                                blurRadius: 12,
                                spreadRadius: 2,
                              ),
                            ]
                            : [],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        item['icon'] as IconData,
                        color: Colors.white,
                        size: 40,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        item['title'] as String,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        item['desc'] as String,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
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
