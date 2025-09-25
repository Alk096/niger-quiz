import 'package:flutter/material.dart';
import 'package:niger_quiz/theme/typography.dart';
import 'package:niger_quiz/views/widgets/button.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key, required this.nom});
  final nom;
  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => {Navigator.pop(context)},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Niger Quiz App', style: UrbainDriverText.h1),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Bienvenue ${widget.nom}', style: UrbainDriverText.h2),
            SizedBox(height: 20),
            Text(
              'Choisissez une catégorie pour commencer le quiz.',
              style: UrbainDriverText.body,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Button(
        btntext: 'Commencer le quiz',
        onPressed: () => {
          //Naviger vers les quiz
        },
      ),
    );
  }
}
