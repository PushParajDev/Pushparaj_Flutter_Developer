import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart'; // For social icons

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Animate(
      effects: const [FadeEffect(), ScaleEffect()],
      child: Stack(
        children: [
          // Main Header Content
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile Image
                CircleAvatar(
                  radius: size.width < 600 ? 70 : 100,
                  backgroundImage: const AssetImage('assets/img/HIK05007-Photoroom (1).jpg'),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(height: 20),

                // Your Name
                Text(
                  'Hi, I\'m Pushparaj',
                  style: TextStyle(
                    fontSize: size.width < 600 ? 32 : 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),

                // Animated Text
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Expert Flutter Developer',
                      textStyle: TextStyle(fontSize: size.width < 600 ? 18 : 24, color: Colors.white),
                      speed: const Duration(milliseconds: 100),
                    ),
                    TypewriterAnimatedText(
                      'Cross-Platform App Specialist',
                      textStyle: TextStyle(fontSize: size.width < 600 ? 18 : 24, color: Colors.white),
                      speed: const Duration(milliseconds: 100),
                    ),
                    TypewriterAnimatedText(
                      'Web Application Developer',
                      textStyle: TextStyle(fontSize: size.width < 600 ? 18 : 24, color: Colors.white),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  repeatForever: true,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ],
            ),
          ),

          // Top-right contact icons
       Positioned(
  top: 20,
  right: 20,
  child: Row(
    children: [
      IconButton(
        icon: const Icon(Icons.phone, color: Colors.white),
        onPressed: () async {
          final Uri phoneUri = Uri.parse('tel:+918825739779');
          if (await canLaunchUrl(phoneUri)) {
            await launchUrl(phoneUri);
          }
        },
      ),
      IconButton(
        icon: const Icon(FontAwesomeIcons.linkedin, color: Colors.white),
        onPressed: () async {
          final Uri linkedInUri = Uri.parse('https://www.linkedin.com/in/pushparaj-85bb9a28b/');
          if (await canLaunchUrl(linkedInUri)) {
            await launchUrl(linkedInUri, mode: LaunchMode.externalApplication);
          }
        },
      ),
      IconButton(
        icon: const Icon(Icons.mail_outline, color: Colors.white),
        onPressed: () async {
          final Uri emailUri = Uri(
            scheme: 'mailto',
            path: 'jpushparaj2021@gmail.com',
            query: 'subject=Portfolio Inquiry',
          );
          if (await canLaunchUrl(emailUri)) {
            await launchUrl(emailUri);
          }
        },
      ),
      IconButton(
        icon: const Icon(FontAwesomeIcons.whatsapp, color: Colors.white),
        onPressed: () async {
          final Uri whatsappUri = Uri.parse('https://wa.me/918825739779'); // Include country code
          if (await canLaunchUrl(whatsappUri)) {
            await launchUrl(whatsappUri, mode: LaunchMode.externalApplication);
          }
        },
      ),
    ],
  ),
)
        ],
      ),
    );
  }
}