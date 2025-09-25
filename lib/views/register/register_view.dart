import 'package:flutter/material.dart';
import 'package:niger_quiz/routes/app_routes.dart';
import 'package:niger_quiz/theme/colors.dart';
import 'package:niger_quiz/theme/size.dart';
import 'package:niger_quiz/theme/spacing.dart';
import 'package:niger_quiz/theme/typography.dart';
import 'package:niger_quiz/views/widgets/button.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _nomController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => {Navigator.pop(context)},
          icon: Icon(Icons.close),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Quel est votre nom ?', style: UrbainDriverText.h1),
            SizedBox(height: UrbainDriverSpacing.xl),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: UrbainDriverSpacing.xl,
                ),

                child: TextField(
                  controller: _nomController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: UrbainDriverColors.primary),
                    ),
                    hintText: 'Votre nom',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        UrbainDriverSize.radiusSm,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: UrbainDriverSpacing.xl),

          ],
        ),
      ),
      bottomNavigationBar: Button(
        btntext: 'Continue',
        onPressed: () => {Navigator.pushNamed(context, AppRoutes.categories, arguments: _nomController.text.trim())},
      ),
    );
  }
}
