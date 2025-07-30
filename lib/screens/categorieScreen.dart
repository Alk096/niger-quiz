// ignore_for_file: file_names

import 'package:apklearn/models/categorie.dart';
import 'package:apklearn/screens/quiz_screen.dart';
import 'package:flutter/material.dart';

class CategorieScreen extends StatefulWidget {
  const CategorieScreen({super.key});

  @override
  State<CategorieScreen> createState() => _CategorieScreenState();
}

class _CategorieScreenState extends State<CategorieScreen> {
  List<Categorie> categories = [
    Categorie(
      name: 'Histoire/Géographie',
      logoUrl: 'assets/images/america.png',
      nombreQuestions: '4 Questions',
    ),

    Categorie(
      name: 'Culture Générale',
      logoUrl: 'assets/images/OpenBook.png',
      nombreQuestions: '4 Questions',
    ),
    Categorie(
      name: 'Islam',
      logoUrl: 'assets/images/Ramadan.png',
      nombreQuestions: '4 Questions',
    ),
    Categorie(
      name: 'Cluture et Ethnie',
      logoUrl: 'assets/images/Users.png',
      nombreQuestions: '4 Questions',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Niger Quiz App',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'Quelle Categorie souhaiterez vous choisir ?',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                final category = categories[index];

                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.grey.shade300),
                  ),
                  child: InkWell(
                    onTap: () {
                      // Action when the card is tapped
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(category.logoUrl, height: 40, width: 40),
                          SizedBox(height: 10),
                          Text(
                            category.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 6),
                          Text(
                            category.nombreQuestions,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen()));
            },
            child: Text(
              'Commencer le Quiz',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
