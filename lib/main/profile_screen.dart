import 'package:dance_app/buttons/login_button.dart';
import 'package:dance_app/cards/course_progress_card.dart';
import 'package:dance_app/cards/profile_header.dart';
import 'package:dance_app/cards/profile_stats_row.dart';
import 'package:dance_app/cards/settings_item.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF141325), Color(0xFF050816)],
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFF050816),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Column(
                  children: [
                    ProfileHeader(
                      name: 'María García',
                      email: 'maria@email.com',
                    ),
                    SizedBox(height: 24),
                    ProfileStatsRow(),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                'Mis Cursos',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 12),

              CourseProgressCard(
                title: 'Curso Completo de Salsa',
                progressText: '65% completado',
                progress: 0.65,
                imagePath: 'assets/facebook_icon.png',
              ),

              const SizedBox(height: 12),

              CourseProgressCard(
                title: 'Ballet Básico',
                progressText: '100% completado',
                progress: 1.0,
                imagePath: 'assets/facebook_icon.png',
              ),

              const SizedBox(height: 24),

              SettingsItem(icon: Icons.settings_outlined, text: 'Ajustes'),
              const SizedBox(height: 12),
              SettingsItem(icon: Icons.badge_outlined, text: 'Certificados'),
              LoginButton(
                text: 'Cerrar sesión',
                onPressed: () async {
                  await Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
