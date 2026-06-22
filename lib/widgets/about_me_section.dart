import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_filex/open_filex.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:html' as html;

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  void _launchResume() async {
    final url =
        'https://docs.google.com/document/d/1cNdeyy6nXv5ns5zxPNspj5ufqYfVJxYx/edit?usp=sharing&ouid=106341307537657431401&rtpof=true&sd=true'; // or a public Google Drive link
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  Future<void> downloadPdf() async {
    final data = await rootBundle.load(
      'assets/resume/Philemon_Pushparaj_3.5_Yr_Exp.pdf',
    );

    final bytes = data.buffer.asUint8List();

    final blob = html.Blob([bytes], 'application/pdf');

    final url = html.Url.createObjectUrlFromBlob(blob);

    final anchor =
        html.AnchorElement(href: url)
          ..setAttribute('download', 'Philemon_Pushparaj_Resume.pdf')
          ..click();

    html.Url.revokeObjectUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    final skills = [
      'Flutter',
      'Dart',
      'Firebase',
      'HTML',
      'JavaScript',
      'Provider',
      'Riverpod',
      'MVVM',
    ];

    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      width: double.infinity,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 800;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title
              Text(
                "About Me",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.tealAccent,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Get to know me :)",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(height: 40),

              // Main Content
              isMobile
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      profileImage(),
                      const SizedBox(height: 20),
                      aboutText(skills),
                    ],
                  )
                  : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      profileImage(),
                      const SizedBox(width: 40),
                      Expanded(child: aboutText(skills)),
                    ],
                  ),
            ],
          );
        },
      ),
    );
  }

  // 📷 Profile Image Widget
  Widget profileImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/img/HIK05007-Photoroom (1).jpg', // Replace with your actual image path
        width: 300,
        fit: BoxFit.cover,
      ),
    );
  }

  // 📝 About Text and Skills
  Widget aboutText(List<String> skills) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Who am I?",
          style: TextStyle(
            color: Colors.tealAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          "I'm Pushparaj J, a Flutter Developer.",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          "I'm a dedicated Flutter Mobile Application Developer with over 3.5+ years of hands-on experience building high-quality, "
          "cross-platform mobile applications using Flutter and Dart. I specialize in creating sleek, high-performance apps that "
          "deliver seamless user experiences across both Android and iOS devices.\n\n"
          "As a freelancer, I’ve worked with diverse clients globally—helping startups and businesses turn ideas into fully functional "
          "mobile solutions across various industries such as e-commerce, food delivery, healthcare, logistics, and more.\n\n"
          "I’m proficient in integrating robust backend systems using Firebase, RESTful APIs, and services like payment gateways, push notifications, "
          "Google Maps, WebSockets, and chat modules. I also have deep experience with state management tools like Getx and Bloc.\n\n"
          "My focus is on writing clean, scalable, and maintainable code while collaborating closely with stakeholders to build intuitive, "
          "user-centric mobile apps. When not building apps, I enjoy exploring new Flutter libraries, refining UI/UX, and learning new trends "
          "to deliver even better digital experiences.\n\n"
          "Let’s connect and bring your app idea to life with Flutter!",
          style: TextStyle(color: Colors.white70, height: 1.5),
        ),
        const SizedBox(height: 10),
        TextButton.icon(
          onPressed: downloadPdf,
          icon: const Icon(Icons.download, color: Colors.tealAccent),
          label: const Text(
            'Download Resume',
            style: TextStyle(color: Colors.tealAccent),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey[900],
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
