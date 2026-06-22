import 'package:flutter/material.dart';

import '../widgets/about_me_section.dart';
import '../widgets/about_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/get_in_touch.dart';
import '../widgets/header_section.dart';
import '../widgets/project_section.dart';
import '../widgets/skill_section.dart';
import '../widgets/what_can_i_do.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Header(),
            AboutMeSection(),
            SkillsSection(),
            ProjectsSection(),
            WhatICanDoSection(),
            GetInTouchSection(),
          ],
        ),
      ),
    );
  }
}
