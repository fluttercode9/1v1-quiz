import 'package:project/db/virtual_db.dart';
import 'package:project/models/question/question.dart';
import 'package:project/repositories/Iquestions_repository.dart';

class QuestionsRepository implements IQuestionsRepository {
  final VirtualDB _db;

  QuestionsRepository(this._db);

  List<Question> getAll() {
    return _db.items;
  }

  @override
  Question getOne(int id) {
    // TODO: implement getOne
    throw UnimplementedError();
  }
}
