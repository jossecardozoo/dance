import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../cards/video_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.homeBackground),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hola, Bailarín",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textLight,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Descubre nuevas clases hoy",
                    style: TextStyle(fontSize: 16, color: AppColors.textLight),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Videos",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textLight,
                    ),
                  ),
                  const SizedBox(height: 12),
                  VideoCard(
                    title: "Hip Hop Intermedio",
                    teacher: "Carlos Ruiz",
                    duration: "30 min",
                    views: "5.1k vistas",
                    imagePath: 'assets/videos/hiphop.jpg',
                  ),
                  const SizedBox(height: 20),
                  VideoCard(
                    title: "Hip Hop Intermedio",
                    teacher: "Carlos Ruiz",
                    duration: "30 min",
                    views: "5.1k vistas",
                    imagePath: 'assets/videos/hiphop.jpg',
                  ),
                  const SizedBox(height: 20),
                  VideoCard(
                    title: "Hip Hop Intermedio",
                    teacher: "Carlos Ruiz",
                    duration: "30 min",
                    views: "5.1k vistas",
                    imagePath: 'assets/videos/hiphop.jpg',
                  ),
                  const SizedBox(height: 20),
                  VideoCard(
                    title: "Hip Hop Intermedio",
                    teacher: "Carlos Ruiz",
                    duration: "30 min",
                    views: "5.1k vistas",
                    imagePath: 'assets/videos/hiphop.jpg',
                  ),
                  const SizedBox(height: 20),
                  VideoCard(
                    title: "Hip Hop Intermedio",
                    teacher: "Carlos Ruiz",
                    duration: "30 min",
                    views: "5.1k vistas",
                    imagePath: 'assets/videos/hiphop.jpg',
                  ),
                  const SizedBox(height: 20),
                  VideoCard(
                    title: "Hip Hop Intermedio",
                    teacher: "Carlos Ruiz",
                    duration: "30 min",
                    views: "5.1k vistas",
                    imagePath: 'assets/videos/hiphop.jpg',
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
