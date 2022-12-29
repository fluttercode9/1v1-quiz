import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:project/features/presenter/presenter_state.dart';

import '../../models/question/question.dart';

class PresenterCubit extends Cubit<PresenterState> {
  final _tts = FlutterTts();

  PresenterCubit() : super(const PresenterState.initial()) {}

  Future<void> init() async {
    print('initcubit');
    await _tts.setLanguage('pl-PL');
    await _tts.setSpeechRate(0.5);
    await _tts.setPitch(2);
    _tts.setCompletionHandler(() {
      emit(PresenterState.free());
      print('FREEEEEEEE');
    });
    _tts.setStartHandler(() {
      emit(PresenterState.playing());
      print('PLAUINNNNNGNGNGNGNG');
    });
    await _tts.awaitSpeakCompletion(true);
    await _tts.awaitSynthCompletion(true);

    speak(" To jest gra rywalizacyjna.");
    speak(
        "Usłyszysz pytania. Drużyna która pierwsza wciśnie przycisk ma prawo odpowiedzi na pytanie za co otrzyma punkty. Nie wciskajcie jednak go pochopnie. Kara za błędną odpowiedź będzie surowa. Jeżeli wciśniesz przycisk przed tym jak skończe mówić, możesz nie uslyszeć wszystkich dostępnych odpowiedzi.  ");
  }

  Future<void> speak(String text) async {
    await _tts
        .speak(text)
        .whenComplete(() => emit(const PresenterState.free()));
  }

  Future<void> stop() async {
    await _tts.stop();
    emit(PresenterState.free());
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

    speak('${indexToSpeech[indexQuestion]}. ${question.question}');

    question.answers.forEach((element) async {
      Future.delayed(const Duration(microseconds: 500), (() async {
        emit(const PresenterState.playing());

        speak('${indexToLetter[question.answers.indexOf(element)]}');
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
