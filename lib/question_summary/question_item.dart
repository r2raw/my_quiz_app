import 'package:flutter/material.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({
    super.key,
    required this.itemQuestion,
    required this.correctAnswer,
    required this.userAnswer,
  });
  final String itemQuestion;
  final String correctAnswer;
  final String userAnswer;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              style: TextStyle(
                color: Color.fromARGB(255, 241, 214, 255),
                fontWeight: FontWeight.bold,
              ),
              itemQuestion),
          Text(
              style: TextStyle(color: Color.fromARGB(255, 202, 132, 255)),
              correctAnswer),
          Text(
              style: TextStyle(color: Color.fromARGB(255, 203, 200, 255)),
              userAnswer),
        ],
      ),
    );
  }
}
