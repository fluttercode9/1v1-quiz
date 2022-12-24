import '../models/question/question.dart';

abstract class IQuestionsRepository {
  List<Question> getAll();
  Question getOne(int id);
}
