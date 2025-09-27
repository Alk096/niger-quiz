import 'package:flutter/material.dart';
import 'package:niger_quiz/theme/colors.dart';
import 'package:niger_quiz/theme/size.dart';
import 'package:niger_quiz/theme/spacing.dart';
import 'package:niger_quiz/theme/typography.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Niger Quiz App',style: UrbainDriverText.h1,),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: UrbainDriverSpacing.xl,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.grey,
              color: UrbainDriverColors.primary,
              minHeight: UrbainDriverSpacing.md,
              value: 0.1,
              borderRadius: BorderRadius.all(Radius.circular(UrbainDriverSize.radiusLg)),
            ),
            SizedBox(
              height:UrbainDriverSpacing.lg,
            ),
            Text('Quel est la capital du niger ?',style: UrbainDriverText.h2,)
          ],)
      ),
    );
  }
}