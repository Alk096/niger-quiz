import 'package:flutter/material.dart';
import 'package:niger_quiz/theme/colors.dart';
import 'package:niger_quiz/theme/size.dart';
import 'package:niger_quiz/theme/spacing.dart';
import 'package:niger_quiz/theme/typography.dart';
import 'package:niger_quiz/views/widgets/button.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key, required this.nom});
  final nom;
  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  List<List<dynamic>> categories = [
    ['assets/icons/America.png', 'Histoire/Geographie', 14],
    ['assets/icons/OpenBook.png', 'Culture Generale', 16],
    ['assets/icons/Ramadan.png', 'Islam', 18],
    ['assets/icons/Users.png', 'Culture et Ethnie', 17],
  ];
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
            SizedBox(height: UrbainDriverSpacing.sm),
            Text(
              'Choisissez une catégorie pour commencer le quiz.',
              style: UrbainDriverText.body,
            ),
            SizedBox(height: UrbainDriverSpacing.xl),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: UrbainDriverSpacing.sm,
                  childAspectRatio: 1.5 / 1,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: UrbainDriverSpacing.sm),
                    child: InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(UrbainDriverSize.radiusSm)),
                      onTap: () {
                        print('Hit ${category[1]}');
                      },
                      child: Card(
                        elevation: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: UrbainDriverSpacing.sm),
                            Image.asset(category[0]),
                            Text(category[1], style: UrbainDriverText.body),
                            Text(
                              '${category[2]} Questions',
                              style: UrbainDriverText.caption,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
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
