import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  String? radioValue;
  String question = 'Quel est la capitale du niger?';
  List<String> responses = ['Maradi', 'Niamey', 'Zinder', 'Agadez'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          'Niger Quiz App',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: LinearProgressIndicator(
                  value: 0.2,
                  color: Colors.blue,
                  minHeight: 25,
                ),
              ),
            ),
            Text(
              question,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20,),
            ...responses.map((response) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  radioValue = response;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8,horizontal: 25),
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(response),
                    Radio<String>(
                      value: response,
                      groupValue: radioValue,
                      onChanged: (val) {
                        setState(() {
                          radioValue = val;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              print('Selected answer: $radioValue');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text(
              'Continuer',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
