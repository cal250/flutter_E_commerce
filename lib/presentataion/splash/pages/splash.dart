import 'package:app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:app/core/configs/assets/app_vectors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: SvgPicture.asset( // Corrected here
          AppVectors.appLogo,
          // Optional: You can specify width and height
          width: 100, // Adjust as needed
          height: 100, // Adjust as needed
        ),
      ),
    );
  }
}
