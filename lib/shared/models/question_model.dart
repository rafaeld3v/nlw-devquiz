import 'package:devquiz/shared/models/answered_model.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> answers;

  QuestionModel({
    required this.title,
    required this.answers,
  }) : assert(answers.length == 4);
}
