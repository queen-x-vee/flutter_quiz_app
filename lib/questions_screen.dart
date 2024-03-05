import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    //access the data from the questions.dart file
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          currentQuestion.question,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 30),
        //the 3 dots are the spread operator and are used to indicate that the list is pulled out and added as individual comma seprated widgets
        ...currentQuestion.answers.map((answer) {
          return AnswerButton(answer, () {});
        })
        /*AnswerButton(currentQuestion.answers[0], () {}),
        AnswerButton(currentQuestion.answers[1], () {}),
        AnswerButton(currentQuestion.answers[2], () {}),
        AnswerButton(currentQuestion.answers[3], () {})*/
      ]),
    );
  }
}
