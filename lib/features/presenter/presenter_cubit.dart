import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:project/features/presenter/presenter_state.dart';

import '../../models/question/question.dart';

class PresenterCubit extends Cubit<PresenterState> {
  final _tts = FlutterTts();

  PresenterCubit() : super(const PresenterState.initial()) {
    _init();
  }

  Future<void> _init() async {
    print('initcubit');
    await _tts.setLanguage('pl-PL');
    await _tts.setSpeechRate(0.5);
    await _tts.setPitch(0.1);

    speak(
        "Witaj hahahaha. To jest gra rywalizacyjna. Podzielcie się na dwie druyny, a jeeli nie masz z kim grać. No to masz problem. ");
    speak(
        "Usłyszysz pytania. Druyna która pierwsza wciśnie przycisk ma prawo odpowiedzi na pytanie za co otrzyma punkty. Nie wciskajcie jednak go pochopnie. Kara za błędną odpowiedź będzie surowa. Jezeli wcisniesz przycisk przed tym jak skoncze mowic, mozesz nie uslyszec wsystkich dostepnych odpowiedzi.  ");
  }

  Future<void> speak(String text) async {
    emit(const PresenterState.playing());
    _tts.speak(text);
    emit(const PresenterState.free());
  }

  Future<void> stop() async {
    _tts.stop();
  }

  Future<void> counting() async {
    for (var i = 5; i >= 0; i--) {
      await Future.delayed(
        const Duration(milliseconds: 1500),
        (() => speak(i.toString())),
      );
    }
  }

  Future<void> roundStart(int indexQuestion, Question question) async {
    print(indexQuestion);
    print(question.toString());

    speak('${indexToSpeech[indexQuestion]}');
    await Future.delayed(
        Duration(seconds: 1), (() => speak(question.question)));

    question.answers.forEach((element) async {
      Future.delayed(Duration(microseconds: 500), (() async {
        speak('${indexToLetter[question.answers.indexOf(element)]}');
        Future.delayed(Duration(milliseconds: 500));
        speak(element.text);
      }));
    });
  }

  Future<void> goodAnswer() async {
    speak('Gratuluję, to jest dobra odpowiedź');
  }

  Future<void> wrongAnswer() async {
    speak('Niestety, to jest błędna odpowiedź');
  }
}

var indexToSpeech = {
  0: 'pierwsze',
  1: 'drugie',
  2: 'trzecie',
  3: 'czwarte',
  4: 'piąte',
  5: 'szóste',
  6: 'siódme',
  7: 'ósme',
  8: 'dziewiąte',
  9: 'dziesiąte',
  10: 'jedenaste',
  11: 'dwunaste',
  12: 'trzynaste',
  13: 'czternaste',
  14: 'piętnaste',
  15: 'szesnaste',
  16: 'siedemnaste',
  17: 'osiemnaste',
  18: 'dziewiętnaste',
  19: 'dwudzieste'
};

var indexToLetter = {0: 'a', 1: 'b', 2: 'c', 3: 'd'};
