import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/question.dart';
import '../models/team.dart';

part 'game_state.freezed.dart';

enum GameStatus { initial, inProgress, ended }

@freezed
class GameState with _$GameState {
  const factory GameState(
      {required GameStatus status,
      required List<Question> questions,
      required List<Question> answeredQuestions,
      required Team team1,
      required Team team2}) = _GameState;
}
