import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/game/answers_cubit.dart';
import 'package:project/game/game_event.dart';
import 'package:project/game/game_state.dart';
import 'package:project/models/question/question.dart';
import 'package:project/repositories/questions_repository.dart';
import 'package:project/utils/styles.dart';

import '../features/presenter/presenter_cubit.dart';
import '../models/answer/answer.dart';
import '../models/team/team.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final QuestionsRepository repository;
  final PresenterCubit presenter;

  Color color1 = color1p;
  Color color2 = color2p;
  bool absorb = false;

  GameBloc(this.repository, this.presenter)
      : super(GameState(
            answering: 0,
            status: GameStatus.initial,
            questions: repository.getAll(),
            answeredQuestions: [],
            team1: const Team(
              name: 'Team 1',
              victories: 0,
            ),
            team2: const Team(
              name: 'Team 2',
              victories: 0,
            ))) {
    on<GameStartedEvent>((event, emit) {
      presenter.roundStart(0, state.questions.first);

      emit(state.copyWith(status: GameStatus.inProgress));
    });

    on<TeamAnsweringEvent>((event, emit) async {
      print('teamAnswering');
      await presenter.stop();
      if (state.answering != 0) return;
      emit(state.copyWith(status: GameStatus.answering, answering: event.team));
      if (event.team == 1) {
        color1 = color1a;
      } else {
        color2 = color2a;
      }
    });

    on<NextQuestionEvent>((event, emit) async {
      await presenter.roundStart(
          state.answeredQuestions.length + 1, state.questions.first);
    });

    on<TeamAnsweredEvent>((event, emit) async {
      print('team answered event');

      if (absorb) return;
      absorb = true;

      await _evaluateAnswer(state.answering, event.answer, emit, event);
      await Future.delayed(Duration(seconds: 3), (() {
        List<Question> answered = [...state.answeredQuestions];
        state.questions.isNotEmpty ? answered.add(state.questions.first) : null;
        emit(state.copyWith(
            status: GameStatus.inProgress,
            answering: 0,
            answeredQuestions: answered,
            questions:
                state.questions.isEmpty ? [] : state.questions.sublist(1)));
        _resetColors();
      }));

      _isEnd(emit);
      if (state.winner != null) return;
      add(NextQuestionEvent());

      color1 = color1p;
      color2 = color2p;

      absorb = false;
    });
  }

  Future _evaluateAnswer(int team, Answer answer, Emitter<GameState> emit,
      TeamAnsweredEvent event) async {
    int team1points = state.team1.points;
    int team2points = state.team2.points;

    team == 1
        ? emit(state.copyWith(
            team1: state.team1.copyWith(
                points: answer.isRight ? team1points + 1 : team1points - 2),
          ))
        : emit(state.copyWith(
            team1: state.team1.copyWith(
                points: answer.isRight ? team2points + 1 : team2points - 2),
          ));
    if (answer.isRight) {
      event.context.read<AnswerCubit>().rightAnswer();
      await presenter.goodAnswer();
    } else {
      event.context.read<AnswerCubit>().wrongAnswer();

      await presenter.wrongAnswer();
    }
    print(state.team1);
  }

  _isEnd(Emitter<GameState> emit) {
    print('checking winner');
    if (state.questions.isEmpty) {
      emit(state.copyWith(
          winner: state.team1.points == state.team2.points
              ? "REMIS"
              : state.team1.points > state.team2.points
                  ? state.team1.name
                  : state.team2.name));
    }
  }

  _resetColors() {
    color1 = color1p;
    color2 = color2p;
  }
}
