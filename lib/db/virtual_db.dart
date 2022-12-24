import 'package:faker/faker.dart';
import '../models/answer/answer.dart';

import '../models/question/question.dart';

class VirtualDB {
  Faker faker = Faker();
  List<Question> get items => List.generate(
        15,
        (index) => Question(
          id: DateTime.now().toIso8601String(),
          question: Questions.questions[index],
          answers: List.generate(
            4,
            (i) => Answer(text: faker.lorem.word(), isRight: i == 3),
          ),
        ),
      );
}

class Questions {
  static List<String> questions = [
    'Jaki jest najwyższy szczyt w Polsce?',
    'Jaki jest najdłuższy rzeka w Polsce?',
    'Jaki jest największy jezioro w Polsce?',
    'Jaki jest największy park narodowy w Polsce?',
    'Jaki jest najstarszy zamek w Polsce?',
    'Jaki jest największy międzynarodowy lotnisko w Polsce?',
    'Jaki jest największy stadion piłkarski w Polsce?',
    'Jaki jest największy kompleks termalny w Polsce?',
    'Jaki jest największy szczyt Tatr?',
    'Jaki jest największy szczyt Sudetów?',
    'Jaki jest najstarszy zamek w Polsce?',
    'Jaki jest największy międzynarodowy lotnisko w Polsce?',
    'Jaki jest największy stadion piłkarski w Polsce?',
    'Jaki jest największy kompleks termalny w Polsce?',
    'Jaki jest największy szczyt Tatr?',
    'Jaki jest największy szczyt Sudetów?',
  ];
}
