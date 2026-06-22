import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GetInTouchSection extends StatelessWidget {
  const GetInTouchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      color: isDark ? Colors.black : Colors.grey[100],
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Get in Touch",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Let's build something together :)",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 32),
          LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 600;
              return Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [
                  ContactCard(
                    icon: Icons.home,
                    title: 'Location',
                    subtitle: 'Chennai,Tamil Nadu,India',
                    highlight: false,
                  ),
                  ContactCard(
                    icon: Icons.phone,
                    title: 'Phone',
                    subtitle: '+91 8825739779',
                    highlight: false, // glowing orange border
                  ),
                  ContactCard(
                    icon: Icons.email,
                    title: 'E-mail',
                    subtitle: 'jpushparaj2021@gmail.com',
                    highlight: false,
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 40),
          const Divider(color: Colors.white24),
          const SizedBox(height: 10),
          Text(
            "Let's work together to create something amazing!",
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: Colors.white60),
          ),
          const SizedBox(height: 8),
          Text(
            "© 2026 Philemon Pushparaj J. All rights reserved.",
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: Colors.white54),
          ),
          const SizedBox(height: 4),
          Text(
            "Made with ❤️ using Flutter",
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: Colors.white54),
          ),
        ],
      ),
    );
  }
}

class ContactCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool highlight;

  const ContactCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.highlight = false,
  });

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final cardColor = Colors.grey[900];
    final borderColor =
        _isHovered
            ? Colors.tealAccent
            : (widget.highlight ? Colors.tealAccent : Colors.transparent);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor, width: 2),
          boxShadow:
              widget.highlight || _isHovered
                  ? [
                    BoxShadow(
                      color: borderColor.withOpacity(0.7),
                      blurRadius: 12,
                      spreadRadius: 1,
                    ),
                  ]
                  : [],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(widget.icon, color: Colors.tealAccent, size: 40),
            const SizedBox(height: 12),
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              widget.subtitle,
              style: const TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
