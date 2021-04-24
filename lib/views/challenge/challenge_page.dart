import 'package:flutter/material.dart';
import 'package:nlw5/views/challenge/widgets/answer_widget.dart';
import 'package:nlw5/views/challenge/widgets/question_indicator_widget.dart';
import 'package:nlw5/views/challenge/widgets/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(top: true, child: QuestionIndicator()),
      ),
      body: Container(
        child: Column(
          children: [
            QuizWidget(title: "Pergunta numero 2?"),
            AnswerWidget(title: "Sim"),
            AnswerWidget(isSelected: true, isRight: false, title: "Nao"),
            AnswerWidget(title: "Talvez"),
            AnswerWidget(title: "Correto"),
          ],
        ),
      ),
    );
  }
}
