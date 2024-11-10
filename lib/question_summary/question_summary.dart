import 'package:flutter/material.dart';
import 'package:my_quiz_app/question_summary/question_identifier.dart';
import 'package:my_quiz_app/question_summary/question_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final isCorrect = data['correct_answer'] == data['user_answer'];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionIdentifier(isCorrect: isCorrect, itemNum: ((data['question_index'] as int) + 1)),
                QuestionItem(
                  itemQuestion: data['question'] as String,
                  correctAnswer: data['correct_answer'] as String,
                  userAnswer: data['user_answer'] as String,
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
