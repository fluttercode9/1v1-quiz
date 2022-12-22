import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/game/game_event.dart';
import 'package:project/game/game_state.dart';
import 'package:project/repositories/questions_repository.dart';

import '../models/team.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final QuestionsRepository repository;
  GameBloc(this.repository)
      : super(GameState(
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
    // on<GameIncrementPressed>((event, emit) => emit(state + 1));
    // on<GameDecrementPressed>((event, emit) => emit(state - 1));
  }
}
