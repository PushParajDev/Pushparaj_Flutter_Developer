import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final cardWidth =
        width > 1000
            ? width / 3 - 40
            : width > 600
            ? width / 2 - 30
            : width - 40;

    final projects = [
      {
        'title': 'JustBiryani – Biryani Delivery App',
        'desc':
            'A location-based food delivery app specialized in delivering a wide variety of biryani exclusively in Chennai and Bangalore. '
            'It offers a seamless ordering experience with real-time tracking, secure payments, and curated restaurant listings focused on authentic biryani.',
        'tech': 'Flutter, Firebase, REST APIs, Google Maps, Razorpay',
        'android':
            'https://play.google.com/store/apps/details?id=com.deliware.justbiryani&hl=en',
        'ios':
            'https://apps.apple.com/in/app/justbiryani-food-delivery/id1572781636',
      },
      {
        'title': 'Deliware Food Delivery Application',
        'desc':
            'A seamless platform for food ordering, real-time tracking, secure payments, and restaurant listings.',
        'tech': 'Flutter, Firebase, REST APIs, Google Maps, Razorpay',

        'android':
            'https://play.google.com/store/apps/details?id=com.deliware.userapp&hl=en',
        'ios':
            'https://apps.apple.com/in/app/deliware-food-delivery/id1511539716',
      },
      {
        'title': 'Delicart - All in ONE',
        'desc':
            'An all-in-one delivery platform supporting food, groceries, pharmacy,Service booking and courier services,cab booking,room booking with multi-role login and live tracking.',
        'tech': 'Flutter, Firebase, Node.js, WebSockets, Stripe',

        'android':
            'https://play.google.com/store/apps/details?id=com.delicart.user&hl=en',
        'ios': 'https://apps.apple.com/in/app/delicart/id6736678172',
      },
      {
        'title': 'Delemax',
        'desc':
            'A scalable logistics and pick-and-drop app enabling users to send and receive packages with real-time rider tracking.',
        'tech': 'Flutter, Firebase, Google Maps, GetX',

        'android':
            'https://play.google.com/store/apps/details?id=delemax.chennai.bytesflow.delemax_customer&hl=en',
        'ios':
            'https://apps.apple.com/in/app/delemax/id6449480855?platform=iphone',
      },
      {
        'title': 'Deliflesh',
        'desc':
            'A niche meat delivery application with scheduled delivery, subscription features, and in-app promotions.',
        'tech': 'Flutter, Firebase, Stripe, Shared Preferences',

        'android':
            'https://play.google.com/store/apps/details?id=com.delifleshuser.app&hl=en',
        'ios': 'https://apps.apple.com/in/app/deliflesh/id6670240554',
      },

      {
        'title': 'Chennai Matrimony & TamilVaran',
        'desc':
            'A personalized matchmaking app tailored for the Chennai region, including profile matching, chat, and search filters.',
        'tech': 'Flutter, Firebase, REST API, GetX',

        'android':
            'https://play.google.com/store/apps/details?id=com.chennai.matrimony&hl=en',
        'ios': 'https://apps.apple.com/in/app/chennai-matrimony/id6742679114',
      },
      {
        'title': 'Novel Health Care – Hospital Management System',
        'desc':
            'A full-featured hospital management app with patient registration, doctor schedules, prescriptions, and appointment tracking.',
        'tech': 'Flutter, Firebase, Provider, SQLite',

        //'url': 'https://github.com/yourusername/novel-healthcare',
      },
      {
        'title': 'Novel Blue – Job Search Application (In Progress)',
        'desc':
            'A job search app focused on blue-collar workers with job categories, resume upload, employer login, and push notifications.',
        'tech': 'Flutter, Firebase, REST APIs, Hive',
        // 'url': 'https://github.com/yourusername/novel-blue',
      },
      {
        'title': 'Personal Portfolio Website',
        'desc':
            'A responsive Flutter web portfolio designed to showcase my skills, projects, and experience as a Flutter developer. '
            'Includes interactive sections like About Me, Projects, Resume Download, and Contact Icons for direct outreach.',
        'tech': 'Flutter Web, Dart, Animate, Responsive UI, GitHub Pages',
        'web':
            'https://pushparajdev.github.io/Pushparaj_Flutter_Developer/', // Replace with your real URL
      },
    ];
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Animate(
            effects: const [
              FadeEffect(duration: Duration(milliseconds: 600)),
              SlideEffect(begin: Offset(0, -0.2)),
            ],
            child: Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.tealAccent, width: 3),
                ),
              ),
              child: const Text(
                'Projects',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.tealAccent,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          // Responsive project cards in a Wrap
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children:
                projects.asMap().entries.map((entry) {
                  final i = entry.key;
                  final project = entry.value;

                  return Animate(
                    delay: Duration(milliseconds: 100 * i),
                    effects: const [
                      FadeEffect(),
                      SlideEffect(begin: Offset(0.1, 0)),
                    ],
                    child: SizedBox(
                      width: cardWidth,
                      child: Card(
                        color: Colors.grey[900],
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                project['title']!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                project['desc']!,
                                style: const TextStyle(color: Colors.white70),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Tech Stack: ${project['tech']}',
                                style: TextStyle(
                                  color: Colors.tealAccent.shade100,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (project['url'] != null)
                                    TextButton.icon(
                                      onPressed:
                                          () => _launchUrl(project['url']!),
                                      icon: const Icon(
                                        Icons.open_in_new,
                                        color: Colors.tealAccent,
                                      ),
                                      label: const Text(
                                        'View Project',
                                        style: TextStyle(
                                          color: Colors.tealAccent,
                                        ),
                                      ),
                                    ),
                                  const SizedBox(height: 10),

                                  Wrap(
                                    spacing: 12,
                                    children: [
                                      if (project['android'] != null)
                                        TextButton.icon(
                                          onPressed:
                                              () => _launchUrl(
                                                project['android']!,
                                              ),
                                          icon: const Icon(
                                            Icons.android,
                                            color: Colors.green,
                                          ),
                                          label: const Text(
                                            'Android',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      if (project['ios'] != null)
                                        TextButton.icon(
                                          onPressed:
                                              () => _launchUrl(project['ios']!),
                                          icon: const Icon(
                                            Icons.apple,
                                            color: Colors.white,
                                          ),
                                          label: const Text(
                                            'iOS',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      if (project['web'] != null)
                                        TextButton.icon(
                                          onPressed:
                                              () => _launchUrl(project['web']!),
                                          icon: const Icon(
                                            Icons.language,
                                            color: Colors.blueAccent,
                                          ),
                                          label: const Text(
                                            'Web',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}
