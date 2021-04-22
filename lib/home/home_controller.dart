import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/models/answer_model.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/models/question_model.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/models/quiz_model.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Laura Piorini",
      photoUrl:
          'https://scontent.fsjk2-1.fna.fbcdn.net/v/t1.6435-9/119169942_10224345399406366_8697816959624030214_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeE-38c41lZkXMfz03jR4kdmA3mN9SVm-14DeY31JWb7Xui-ub79megI-IxsqCWZl9I&_nc_ohc=QszmX8iEolcAX8N8OKM&_nc_ht=scontent.fsjk2-1.fna&oh=d5b48644d0fdf189ee36192dbba0a6df&oe=60A3D4EE',
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
        image: AppImages.blocks,
        title: "NLW 5 Flutter",
        level: Level.facil,
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
  }
}
