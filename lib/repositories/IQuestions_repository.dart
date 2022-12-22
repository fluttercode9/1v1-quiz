import '../models/question.dart';

abstract class IQuestionsRepository {
  List<Question> getAll();
  Question getOne(int id);
  void markAsAnswered(int id);
}
