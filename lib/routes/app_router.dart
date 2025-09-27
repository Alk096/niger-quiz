import 'package:flutter/material.dart';
import 'package:niger_quiz/views/quiz/quiz_view.dart';
import 'app_routes.dart';

// === Import des vues ===
import 'package:niger_quiz/views/onboarding/onboarding_view.dart';
import 'package:niger_quiz/views/register/register_view.dart';
import 'package:niger_quiz/views/categories/categories_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboarding:
        return MaterialPageRoute(builder: (context) => OnboardingView());
      case AppRoutes.register:
        return MaterialPageRoute(builder: (context) => RegisterView());
      case AppRoutes.categories:
        final nom = settings.arguments as String?;
        if (nom == null || nom.isEmpty) {
          throw ArgumentError(
            'Route ${AppRoutes.categories} requiert un argument de type string non null pour "nom'
          );
        }
        return MaterialPageRoute(builder: (context) => CategoriesView(nom : nom));
      case AppRoutes.quiz:
        return MaterialPageRoute(builder: (context) => QuizView());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
