

import 'package:flutter/material.dart';
import 'package:niger_quiz/theme/colors.dart';
import 'package:niger_quiz/theme/size.dart';
import 'package:niger_quiz/theme/spacing.dart';
import 'package:niger_quiz/theme/typography.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.btntext,
    this.onPressed
  });

  final String btntext;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(UrbainDriverSpacing.lg),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: UrbainDriverSpacing.md),
            backgroundColor: UrbainDriverColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(UrbainDriverSize.radiusSm),
            ),
          ),
          onPressed: onPressed,
          child: Text( btntext, style: UrbainDriverText.button),
        ),
      );
  }
}