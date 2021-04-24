import 'package:flutter/material.dart';
import 'package:nlw5/controller/home_controller.dart';

import 'quiz_card.dart';

class QuizCardContainer extends StatelessWidget {
  final HomeController controller;
  const QuizCardContainer({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: controller.quizzes!
            .map((e) => QuizCardWidget(
                  title: e.title,
                  image: e.imagem,
                  percent: (e.questionAnswered / e.questions.length),
                  progress: "${e.questionAnswered}/${e.questions.length}",
                ))
            .toList(),
      ),
    ));
  }
}
