import 'package:app/core/configs/theme/app_theme.dart';
import 'package:app/presentataion/splash/bloc/splash_cubit.dart';
import 'package:app/presentataion/splash/bloc/splash_state.dart';
import 'package:app/presentataion/splash/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: MaterialApp(
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,
        home: const SplashPage(),
      ),
    );
  }
}