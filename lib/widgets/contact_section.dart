import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Animate(
            effects: const [FadeEffect(), SlideEffect(begin: Offset(0, -0.1))],
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
                'Contact Me',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.tealAccent),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Gmail
          ListTile(
            leading: const Icon(Icons.email, color: Colors.red),
            title: const Text('pushparaj@example.com'),
            onTap: () {
              _launchUrl('mailto:pushparaj@example.com');
            },
          ),

          // WhatsApp
          ListTile(
            leading: const Icon(Icons.message, color: Colors.green),
            title: const Text('+91 98765 43210 (WhatsApp)'),
            onTap: () {
              _launchUrl('https://wa.me/919876543210');
            },
          ),

          // GitHub
          ListTile(
            leading: const Icon(Icons.code, color: Colors.black),
            title: const Text('github.com/pushparajdev'),
            onTap: () {
              _launchUrl('https://github.com/pushparajdev');
            },
          ),

          // LinkedIn
          ListTile(
            leading: const Icon(Icons.business, color: Colors.blue),
            title: const Text('linkedin.com/in/pushparajdev'),
            onTap: () {
              _launchUrl('https://linkedin.com/in/pushparajdev');
            },
          ),
        ],
      ),
    );
  }
}