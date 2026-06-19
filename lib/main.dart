import 'package:flutter/material.dart';
import 'package:vaccine_card_app/presentation/auth/onboarding_screen.dart';
import 'package:vaccine_card_app/presentation/common/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return SafeArea(top: false, child: child ?? const SizedBox());
      },
      title: 'Flutter Demo',
      theme: ligthTheme,
      home: const OnboardingScreen(),
    );
  }
}
