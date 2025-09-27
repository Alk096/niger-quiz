import 'package:flutter/material.dart';
import 'package:niger_quiz/routes/app_routes.dart';
import 'package:niger_quiz/views/widgets/button.dart';
import 'package:niger_quiz/theme/spacing.dart';
import 'package:niger_quiz/theme/typography.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: UrbainDriverSpacing.xl),
            Text('Niger Quiz', style: UrbainDriverText.h1),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: UrbainDriverSpacing.xl,
                ),
                child: Image(
                  image: AssetImage(
                    'assets/images/onboarding_illustration.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Button(
        btntext : 'Get Stared',
        onPressed: () => {
          Navigator.pushNamed(context, AppRoutes.register)
        },
      )
    );
  }
}