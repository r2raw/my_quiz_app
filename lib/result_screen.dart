import 'package:flutter/material.dart';
import 'package:my_quiz_app/data/questions.dart';
import 'package:my_quiz_app/question_summary/question_summary.dart';
import 'package:my_quiz_app/questions_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswer, required this.onRestartQuiz});

  final List<String> chosenAnswer;
  final void Function() onRestartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswer[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 193, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ('You answered $correctQuestions out of $totalQuestions questions correctly!')),
          const SizedBox(
            height: 30,
          ),
          QuestionSummary(summaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 255, 193, 255),
            ),
            onPressed: onRestartQuiz,
            icon: Icon(Icons.restart_alt),
            label: Text('Restart Quiz!'),
          )
        ],
      ),
    );
  }
}
