import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/answered_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Rafael D3v",
      photoUrl: "https://avatars.githubusercontent.com/u/66738621?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    await Future.delayed(Duration(seconds: 2));
    state = HomeState.loading;
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        imagem: AppImages.blocks,
        level: Level.facil,
        questionAnswered: 1,
        questions: [
          QuestionModel(
            title: "Esta curtindo o Flutter?",
            answers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Estou amando"),
              AwnserModel(title: "Estou adorando"),
              AwnserModel(
                title: "Show de bola!",
                isRight: true,
              ),
            ],
          ),
          QuestionModel(
            title: "Esta curtindo o Flutter?",
            answers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Estou amando"),
              AwnserModel(title: "Estou adorando"),
              AwnserModel(
                title: "Show de bola!",
                isRight: true,
              ),
            ],
          ),
        ],
      ),
    ];
    state = HomeState.success;
  }
}
