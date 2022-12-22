import 'package:faker/faker.dart';

import '../models/question.dart';

class VirtualDB {
  Faker faker = Faker();
  List<Question> get items => List.generate(
      15,
      (index) => Question(
          id: DateTime.now().toIso8601String(),
          question: faker.lorem.sentence(),
          answer: faker.lorem.word()));
}
