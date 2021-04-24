import 'package:flutter/foundation.dart';
import 'package:nlw5/core/app_images.dart';
import 'package:nlw5/models/answer_model.dart';
import 'package:nlw5/models/question_model.dart';
import 'package:nlw5/models/quiz_model.dart';
import 'package:nlw5/models/user_model.dart';
import 'package:nlw5/views/home_repository.dart';

enum HomeState { success, loading, error, empty }

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeReopository();

  void getUser() async {
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    state = HomeState.success;
    quizzes = [
      QuizModel(
        questionAnswered: 1,
        title: "NWL 5 flutter!",
        imagem: AppImages.blocks,
        level: Level.facil,
        questions: [
          QuestionModel(title: "O que é flutter?", answers: [
            AnswerModel(
              title: "Bom",
            ),
            AnswerModel(title: "Bfom"),
            AnswerModel(title: "Bogm"),
            AnswerModel(title: "Bomh", isRight: true)
          ]),
          QuestionModel(title: "O que é flutter?", answers: [
            AnswerModel(
              title: "Bom",
            ),
            AnswerModel(title: "Bfom"),
            AnswerModel(title: "Bogm"),
            AnswerModel(title: "Bomh", isRight: true)
          ])
        ],
      ),
      QuizModel(
          title: "NWL 6 flutter",
          imagem: AppImages.hierarchy,
          level: Level.facil,
          questions: [
            QuestionModel(title: "O que é flutter?", answers: [
              AnswerModel(
                title: "Bom",
              ),
              AnswerModel(title: "Bfom"),
              AnswerModel(title: "Bogm"),
              AnswerModel(title: "Bomh", isRight: true)
            ])
          ]),
      QuizModel(
          title: "NWL 6 flutter",
          imagem: AppImages.laptop,
          level: Level.facil,
          questions: [
            QuestionModel(title: "O que é flutter?", answers: [
              AnswerModel(
                title: "Bom",
              ),
              AnswerModel(title: "Bfom"),
              AnswerModel(title: "Bogm"),
              AnswerModel(title: "Bomh", isRight: true)
            ])
          ]),
    ];
  }
}
