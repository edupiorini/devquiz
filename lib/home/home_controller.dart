import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/models/answer_model.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/models/question_model.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/models/quiz_model.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/models/user_model.dart';
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
      name: "Laura Piorini",
      photoUrl:
          'https://scontent.fsjk2-1.fna.fbcdn.net/v/t1.6435-9/119169942_10224345399406366_8697816959624030214_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeE-38c41lZkXMfz03jR4kdmA3mN9SVm-14DeY31JWb7Xui-ub79megI-IxsqCWZl9I&_nc_ohc=QszmX8iEolcAX8N8OKM&_nc_ht=scontent.fsjk2-1.fna&oh=d5b48644d0fdf189ee36192dbba0a6df&oe=60A3D4EE',
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        image: AppImages.blocks,
        title: "NLW 5 Flutter",
        level: Level.facil,
        questionAnswered: 1,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter?",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Estou Amando"),
              AnswerModel(title: "Topzera"),
              AnswerModel(title: "Chiq demais"),
            ],
          ),
        ],
      )
    ];
    state = HomeState.success;
  }
}
