import 'package:app/core/configs/theme/app_colors.dart';
import 'package:app/presentataion/auth/pages/signin.dart';
import 'package:app/presentataion/splash/bloc/splash_cubit.dart';
import 'package:app/presentataion/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:app/core/configs/assets/app_vectors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit,SplashState>(
      listener: (context, state) {
        if(state is UnAuthenticates){
          Navigator.pushReplacement(
            context, 
            MaterialPageRoute(
              builder: (context)=>const SigninPage())
            
            );
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: SvgPicture.asset( // Corrected here
            AppVectors.appLogo
            // Optional: You can specify width and height
             // Adjust as needed
          ),
        ),
      ),
    );
  }
}
