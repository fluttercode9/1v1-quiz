import 'package:faker/faker.dart';
import '../models/answer/answer.dart';

import '../models/question/question.dart';

class VirtualDB {
  Faker faker = Faker();
  List<Question> get items => Questions().quizQuestions.map((e) {
        var questionText = e['question'];
        var answers = e['answers'] as List<Map<String, dynamic>>;

        return Question(
          id: DateTime.now().toIso8601String(),
          answers: answers
              .map((e) => Answer(text: e['text']!, isRight: e['correct']))
              .toList(),
          question: questionText,
        );
      }).toList();
}

class Questions {
  List<Map<String, dynamic>> quizQuestions = [
    {
      'question':
          'Który z poniższych elementów jest niezbędny do uruchomienia programu w języku Dart?',
      'answers': [
        {'text': 'Kompilator', 'correct': false},
        {'text': 'Interpreter', 'correct': true},
        {'text': 'Transpiler', 'correct': false},
        {'text': 'Debugger', 'correct': false},
      ],
    },
    {
      'question':
          'Który z poniższych gatunków filmowych nie pochodzi z Hollywood?',
      'answers': [
        {'text': 'Thriller', 'correct': false},
        {'text': 'Dramat', 'correct': false},
        {'text': 'Komedia', 'correct': false},
        {'text': 'Bollywood', 'correct': true},
      ],
    },
    {
      'question': 'Który z poniższych krajów nie leży na Półwyspie Iberyjskim?',
      'answers': [
        {'text': 'Hiszpania', 'correct': false},
        {'text': 'Portugalia', 'correct': false},
        {'text': 'Włochy', 'correct': true},
        {'text': 'Andora', 'correct': false},
      ],
    },
    {
      'question': 'Który z poniższych typów muzyki nie pochodzi z Afryki?',
      'answers': [
        {'text': 'Reggae', 'correct': false},
        {'text': 'Hip-hop', 'correct': false},
        {'text': 'Jazz', 'correct': false},
        {'text': 'Afrobeat', 'correct': true},
      ],
    },
    {
      'question':
          'Która z poniższych postaci literackich nie pochodzi z dzieła "Hamlet" Williama Szekspira?',
      'answers': [
        {'text': 'Ofelia', 'correct': false},
        {'text': 'Horacy', 'correct': true},
        {'text': 'Klaudiusz', 'correct': false},
        {'text': 'Fortynbras', 'correct': false},
      ],
    }
  ];
}
