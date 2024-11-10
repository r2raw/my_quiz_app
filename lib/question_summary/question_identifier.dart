import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrect, required this.itemNum});
  final int itemNum;
  final bool isCorrect;
  @override
  Widget build(BuildContext context) {
    final Color identifierColor = isCorrect
        ? Color.fromARGB(255, 255, 104, 246)
        : Color.fromARGB(255, 125, 187, 248);
    // TODO: implement build
    return Container(
      width: 30,
      height: 30,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: identifierColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          itemNum.toString(),
        ),
      ),
    );
  }
}
